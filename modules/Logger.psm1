# MÓDULO LOGGER - SISTEMA TM01 TRONCAL MAGDALENA
# Archivo: modules/Logger.psm1
# Propósito: Logging estructurado con formato JSON y múltiples niveles
# Fecha: 24 de octubre de 2025
# Versión: 1.0

# Configuración global del logger
$Global:LoggerConfig = @{
    LogLevel = "INFO"
    LogFormat = "JSON"
    LogDirectory = "logs"
    MaxLogSize = 10MB
    MaxLogFiles = 5
    EnableConsole = $true
    EnableFile = $true
    EnableEmail = $false
    EmailRecipients = @()
    EmailServer = ""
    EmailPort = 587
    EmailUser = ""
    EmailPassword = ""
}

# Función para configurar el logger
function Set-LoggerConfig {
    param(
        [string]$LogLevel = "INFO",
        [string]$LogFormat = "JSON",
        [string]$LogDirectory = "logs",
        [long]$MaxLogSize = 10MB,
        [int]$MaxLogFiles = 5,
        [bool]$EnableConsole = $true,
        [bool]$EnableFile = $true,
        [bool]$EnableEmail = $false,
        [string[]]$EmailRecipients = @(),
        [string]$EmailServer = "",
        [int]$EmailPort = 587,
        [string]$EmailUser = "",
        [string]$EmailPassword = ""
    )
    
    $Global:LoggerConfig.LogLevel = $LogLevel
    $Global:LoggerConfig.LogFormat = $LogFormat
    $Global:LoggerConfig.LogDirectory = $LogDirectory
    $Global:LoggerConfig.MaxLogSize = $MaxLogSize
    $Global:LoggerConfig.MaxLogFiles = $MaxLogFiles
    $Global:LoggerConfig.EnableConsole = $EnableConsole
    $Global:LoggerConfig.EnableFile = $EnableFile
    $Global:LoggerConfig.EnableEmail = $EnableEmail
    $Global:LoggerConfig.EmailRecipients = $EmailRecipients
    $Global:LoggerConfig.EmailServer = $EmailServer
    $Global:LoggerConfig.EmailPort = $EmailPort
    $Global:LoggerConfig.EmailUser = $EmailUser
    $Global:LoggerConfig.EmailPassword = $EmailPassword
    
    # Crear directorio de logs si no existe
    if (!(Test-Path $LogDirectory)) {
        New-Item -ItemType Directory -Path $LogDirectory -Force | Out-Null
    }
}

# Función para obtener nivel de log como número
function Get-LogLevelNumber {
    param([string]$Level)
    
    $Levels = @{
        "DEBUG" = 0
        "INFO" = 1
        "WARNING" = 2
        "ERROR" = 3
        "CRITICAL" = 4
    }
    
    return $Levels[$Level.ToUpper()]
}

# Función para verificar si debe loggear
function Should-Log {
    param([string]$Level)
    
    $CurrentLevel = Get-LogLevelNumber -Level $Global:LoggerConfig.LogLevel
    $MessageLevel = Get-LogLevelNumber -Level $Level
    
    return $MessageLevel -ge $CurrentLevel
}

# Función para crear entrada de log
function New-LogEntry {
    param(
        [string]$Message,
        [string]$Level = "INFO",
        [string]$Source = "",
        [hashtable]$Data = @{},
        [string]$CorrelationId = ""
    )
    
    $Timestamp = Get-Date -Format "yyyy-MM-ddTHH:mm:ss.fffZ"
    $ProcessId = $PID
    $ThreadId = [System.Threading.Thread]::CurrentThread.ManagedThreadId
    
    if ([string]::IsNullOrEmpty($CorrelationId)) {
        $CorrelationId = [System.Guid]::NewGuid().ToString("N")[0..7] -join ""
    }
    
    $LogEntry = @{
        timestamp = $Timestamp
        level = $Level.ToUpper()
        message = $Message
        source = $Source
        processId = $ProcessId
        threadId = $ThreadId
        correlationId = $CorrelationId
        data = $Data
    }
    
    return $LogEntry
}

# Función para escribir log a consola
function Write-LogToConsole {
    param([hashtable]$LogEntry)
    
    if (!$Global:LoggerConfig.EnableConsole) { return }
    
    $Color = switch ($LogEntry.level) {
        "DEBUG" { "Gray" }
        "INFO" { "White" }
        "WARNING" { "Yellow" }
        "ERROR" { "Red" }
        "CRITICAL" { "Magenta" }
        default { "White" }
    }
    
    $ConsoleMessage = "[$($LogEntry.timestamp)] [$($LogEntry.level)] $($LogEntry.message)"
    
    if ($LogEntry.data.Count -gt 0) {
        $ConsoleMessage += " | Data: $($LogEntry.data | ConvertTo-Json -Compress)"
    }
    
    Write-Host $ConsoleMessage -ForegroundColor $Color
}

# Función para escribir log a archivo
function Write-LogToFile {
    param([hashtable]$LogEntry)
    
    if (!$Global:LoggerConfig.EnableFile) { return }
    
    $LogFile = Join-Path $Global:LoggerConfig.LogDirectory "tm01_$(Get-Date -Format 'yyyyMMdd').log"
    
    try {
        $LogContent = switch ($Global:LoggerConfig.LogFormat) {
            "JSON" { $LogEntry | ConvertTo-Json -Compress }
            "TEXT" { "[$($LogEntry.timestamp)] [$($LogEntry.level)] $($LogEntry.message)" }
            default { $LogEntry | ConvertTo-Json -Compress }
        }
        
        Add-Content -Path $LogFile -Value $LogContent -Encoding UTF8
        
        # Rotar logs si es necesario
        Rotate-LogFiles -LogFile $LogFile
        
    } catch {
        Write-Host "Error al escribir log: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Función para rotar archivos de log
function Rotate-LogFiles {
    param([string]$LogFile)
    
    if (!(Test-Path $LogFile)) { return }
    
    $FileInfo = Get-Item $LogFile
    if ($FileInfo.Length -gt $Global:LoggerConfig.MaxLogSize) {
        $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($LogFile)
        $Extension = [System.IO.Path]::GetExtension($LogFile)
        $Directory = [System.IO.Path]::GetDirectoryName($LogFile)
        
        # Mover archivos existentes
        for ($i = $Global:LoggerConfig.MaxLogFiles - 1; $i -gt 0; $i--) {
            $OldFile = Join-Path $Directory "$BaseName.$i$Extension"
            $NewFile = Join-Path $Directory "$BaseName.$($i + 1)$Extension"
            
            if (Test-Path $OldFile) {
                if ($i -eq $Global:LoggerConfig.MaxLogFiles - 1) {
                    Remove-Item $OldFile -Force
                } else {
                    Move-Item $OldFile $NewFile -Force
                }
            }
        }
        
        # Mover archivo actual
        $NewFile = Join-Path $Directory "$BaseName.1$Extension"
        Move-Item $LogFile $NewFile -Force
    }
}

# Función para enviar log por email
function Send-LogEmail {
    param([hashtable]$LogEntry)
    
    if (!$Global:LoggerConfig.EnableEmail -or $LogEntry.level -notin @("ERROR", "CRITICAL")) { return }
    
    try {
        $Subject = "TM01 Log Alert - $($LogEntry.level) - $($LogEntry.timestamp)"
        $Body = $LogEntry | ConvertTo-Json -Depth 3
        
        $SmtpClient = New-Object System.Net.Mail.SmtpClient($Global:LoggerConfig.EmailServer, $Global:LoggerConfig.EmailPort)
        $SmtpClient.EnableSsl = $true
        $SmtpClient.Credentials = New-Object System.Net.NetworkCredential($Global:LoggerConfig.EmailUser, $Global:LoggerConfig.EmailPassword)
        
        $MailMessage = New-Object System.Net.Mail.MailMessage
        $MailMessage.From = $Global:LoggerConfig.EmailUser
        $MailMessage.Subject = $Subject
        $MailMessage.Body = $Body
        
        foreach ($Recipient in $Global:LoggerConfig.EmailRecipients) {
            $MailMessage.To.Add($Recipient)
        }
        
        $SmtpClient.Send($MailMessage)
        
    } catch {
        Write-Host "Error al enviar email: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Función principal de logging
function Write-Log {
    param(
        [string]$Message,
        [string]$Level = "INFO",
        [string]$Source = "",
        [hashtable]$Data = @{},
        [string]$CorrelationId = ""
    )
    
    # Verificar si debe loggear
    if (!(Should-Log -Level $Level)) { return }
    
    # Crear entrada de log
    $LogEntry = New-LogEntry -Message $Message -Level $Level -Source $Source -Data $Data -CorrelationId $CorrelationId
    
    # Escribir a diferentes destinos
    Write-LogToConsole -LogEntry $LogEntry
    Write-LogToFile -LogEntry $LogEntry
    Send-LogEmail -LogEntry $LogEntry
}

# Funciones de conveniencia para diferentes niveles
function Write-DebugLog {
    param([string]$Message, [string]$Source = "", [hashtable]$Data = @{}, [string]$CorrelationId = "")
    Write-Log -Message $Message -Level "DEBUG" -Source $Source -Data $Data -CorrelationId $CorrelationId
}

function Write-InfoLog {
    param([string]$Message, [string]$Source = "", [hashtable]$Data = @{}, [string]$CorrelationId = "")
    Write-Log -Message $Message -Level "INFO" -Source $Source -Data $Data -CorrelationId $CorrelationId
}

function Write-WarningLog {
    param([string]$Message, [string]$Source = "", [hashtable]$Data = @{}, [string]$CorrelationId = "")
    Write-Log -Message $Message -Level "WARNING" -Source $Source -Data $Data -CorrelationId $CorrelationId
}

function Write-ErrorLog {
    param([string]$Message, [string]$Source = "", [hashtable]$Data = @{}, [string]$CorrelationId = "")
    Write-Log -Message $Message -Level "ERROR" -Source $Source -Data $Data -CorrelationId $CorrelationId
}

function Write-CriticalLog {
    param([string]$Message, [string]$Source = "", [hashtable]$Data = @{}, [string]$CorrelationId = "")
    Write-Log -Message $Message -Level "CRITICAL" -Source $Source -Data $Data -CorrelationId $CorrelationId
}

# Función para crear contexto de correlación
function New-LogContext {
    param([string]$ContextName = "")
    
    $ContextId = [System.Guid]::NewGuid().ToString("N")[0..7] -join ""
    
    return @{
        ContextId = $ContextId
        ContextName = $ContextName
        StartTime = Get-Date
    }
}

# Función para finalizar contexto de correlación
function Complete-LogContext {
    param([hashtable]$Context, [string]$Status = "COMPLETED")
    
    $Duration = (Get-Date) - $Context.StartTime
    
    Write-InfoLog -Message "Context completed: $($Context.ContextName)" -Source "Logger" -Data @{
        ContextId = $Context.ContextId
        Status = $Status
        Duration = $Duration.TotalSeconds
    } -CorrelationId $Context.ContextId
}

# Exportar funciones públicas
Export-ModuleMember -Function @(
    "Set-LoggerConfig",
    "Write-Log",
    "Write-DebugLog",
    "Write-InfoLog",
    "Write-WarningLog",
    "Write-ErrorLog",
    "Write-CriticalLog",
    "New-LogContext",
    "Complete-LogContext"
)
