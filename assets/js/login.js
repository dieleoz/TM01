// ================================================================
// CONFIGURACIÓN DE AUTENTICACIÓN
// ================================================================

// Credenciales del sistema
const VALID_CREDENTIALS = {
    '0rt1z': '0rt1z',
    'QA': 'qa2025',
    'Especificador': 'spec2025',
    'Admin': 'admin2025'
};

// Límite de intentos de login (Mejora de seguridad - 27-Oct-2025)
let intentosLogin = 0;
const MAX_INTENTOS = 5;
const TIMEOUT_BLOQUEO = 300000; // 5 minutos

// Timeout de sesión (Mejora de seguridad - 27-Oct-2025)
const TIMEOUT_SESION = 1800000; // 30 minutos
let ultimaActividad = Date.now();

// ================================================================
// VERIFICAR SESIÓN EXISTENTE
// ================================================================
window.addEventListener('DOMContentLoaded', function() {
    const isAuthenticated = sessionStorage.getItem('authenticated') === 'true';
    const username = sessionStorage.getItem('username');
    
    if (isAuthenticated && username) {
        showPortal(username);
        iniciarMonitoreoSesion();
    }
});

// ================================================================
// MANEJO DE LOGIN
// ================================================================
function handleLogin(event) {
    event.preventDefault();
    
    // Verificar límite de intentos
    if (intentosLogin >= MAX_INTENTOS) {
        alert('⚠️ Demasiados intentos fallidos. Por favor, espera 5 minutos.');
        return false;
    }
    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const errorMessage = document.getElementById('errorMessage');
    const spinner = document.getElementById('spinner');
    
    // Ocultar error previo
    errorMessage.classList.remove('show');
    
    // Mostrar spinner
    spinner.classList.add('show');
    
    // Simular validación (300ms delay para UX)
    setTimeout(() => {
        spinner.classList.remove('show');
        
        if (VALID_CREDENTIALS[username] && VALID_CREDENTIALS[username] === password) {
            // Login exitoso
            intentosLogin = 0; // Resetear contador
            sessionStorage.setItem('authenticated', 'true');
            sessionStorage.setItem('username', username);
            showPortal(username);
            iniciarMonitoreoSesion();
        } else {
            // Login fallido
            intentosLogin++;
            errorMessage.textContent = `❌ Usuario o contraseña incorrectos (${intentosLogin}/${MAX_INTENTOS})`;
            errorMessage.classList.add('show');
            document.getElementById('password').value = '';
            document.getElementById('password').focus();
            
            // Bloquear tras MAX_INTENTOS
            if (intentosLogin >= MAX_INTENTOS) {
                errorMessage.textContent = '🔒 Demasiados intentos. Bloqueado por 5 minutos.';
                setTimeout(() => {
                    intentosLogin = 0;
                    errorMessage.classList.remove('show');
                }, TIMEOUT_BLOQUEO);
            }
        }
    }, 300);
    
    return false;
}

// ================================================================
// MOSTRAR PORTAL
// ================================================================
function showPortal(username) {
    document.getElementById('loginContainer').style.display = 'none';
    document.getElementById('portalContainer').classList.add('show');
    document.getElementById('userDisplay').textContent = username;
}

// ================================================================
// MANEJO DE LOGOUT
// ================================================================
function handleLogout() {
    if (confirm('¿Está seguro de que desea cerrar sesión?')) {
        sessionStorage.removeItem('authenticated');
        sessionStorage.removeItem('username');
        window.location.reload();
    }
}

// ================================================================
// MONITOREO DE SESIÓN
// ================================================================
function iniciarMonitoreoSesion() {
    // Actualizar actividad
    document.addEventListener('mousemove', () => {
        ultimaActividad = Date.now();
    });
    
    document.addEventListener('keypress', () => {
        ultimaActividad = Date.now();
    });
    
    // Verificar timeout cada minuto
    setInterval(() => {
        const tiempoInactivo = Date.now() - ultimaActividad;
        
        if (tiempoInactivo > TIMEOUT_SESION) {
            alert('⚠️ Tu sesión ha expirado por inactividad. Serás redirigido al login.');
            sessionStorage.removeItem('authenticated');
            sessionStorage.removeItem('username');
            window.location.reload();
        }
    }, 60000); // Verificar cada minuto
}

