function Update-RFQFiberTable {
    param(
        [string]$RfqPath = 'X. Entregables Consolidados/RFQ_001_FIBRA_OPTICA_v1.0.md',
        [object[]]$Items
    )
    if (-not (Test-Path -LiteralPath $RfqPath)) { throw "No existe RFQ: $RfqPath" }
    $content = Get-Content -LiteralPath $RfqPath -Raw -Encoding UTF8
    $startTag = '<!-- AUTOGEN:FO_TABLE_START -->'
    $endTag   = '<!-- AUTOGEN:FO_TABLE_END -->'
    $start = $content.IndexOf($startTag)
    $end   = $content.IndexOf($endTag)
    if ($start -lt 0 -or $end -lt 0 -or $end -le $start) { throw "Marcadores AUTOGEN no encontrados en $RfqPath" }

    $before = $content.Substring(0, $start + $startTag.Length)
    $after  = $content.Substring($end)

    $header = "| ID   | Nombre                                       | Und | Cantidad | Precio Unit. USD | Precio Unit. COP | Total USD | Total COP |"
    $sep    = "|------|----------------------------------------------|-----|----------|------------------|------------------|-----------|-----------|"
    $lines = @($header, $sep)
    foreach($r in $Items){ $lines += "| $($r.ID) | $($r.Nombre) | $($r.Und) | $($r.Cantidad) |  |  |  |  |" }
    $table  = ($lines -join "`n")
    $note   = "`n> Última sincronización: " + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + "`n`n"

    $newContent = $before + "`n" + $note + $table + "`n" + $after
    Set-Content -LiteralPath $RfqPath -Value $newContent -Encoding UTF8
}

Export-ModuleMember -Function Update-RFQFiberTable
