@echo off
title RED CONFIG - v1.5 BETA
rem :. Nombre: RED CONFIG
rem :. Autor: Joaquin Centurion
rem :. Version: 1.5.0 BETA
rem :. Sistema realizado para propositos educacionales, no me responsabiliso por el uso que le den a esta herramienta.
rem :. Descripcion: Configuración de DNS
rem :. Cambios de la versión v1.5 BETA
color 47

rem: ADVERTENCIA
@echo off
:inicio
cls
echo.
echo Este programa necesita permisos de ADMINISTRADOR para ejecutar comandos elevados.
echo Presiona una tecla para continuar.
pause>nul
goto login

rem: SESION LOGIN
:login
mkdir C:\Users\%USERNAME%\REDCONFIG_LOGS\
cls
echo.
set /p nombre=Introduce tu nick: 
echo Hola %nombre%

IF %nombre% EQU SkarYxD (
      echo Administrador
      echo ++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
      echo Nombre: %nombre% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
      echo Registro: %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
      echo ++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
      echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
      goto :menuadmin
) ELSE (
    echo Usuario
    echo ++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
    echo Nombre: %nombre% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
    echo Registro: %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
    echo ++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
    echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
    goto :menuini
)

rem: MENU ADMIN
:menuadmin
color 03
cls
rem: INICIO DE REGISTRO DATOS
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo REGISTRO LOG_ADMIN.TXT >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Usuario: %nombre%  >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Rango: Administrador >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Usuario PC: %USERNAME% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Hora: %time% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Fecha: %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Directorio: %CD% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Registros: C:\Users\%USERNAME%\REDCONFIG_LOGS\ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo Version: 1.5.0 BETA >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo +++++++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_admin.txt
rem: FIN REGISTRO DATOS
echo.
echo Hora Actual: %time%
echo.
echo Bienvenido %nombre% al menu de administracion
echo.
echo *****MENU ADMIN*****
echo.
echo.
      echo a1) Lista Usuarios
      echo a2) Informacion Basica
      echo a3) Informacion Completa
      echo a4) Ficheros
      echo a5) Abrir Directorio
      echo a6) Abrir Base de datos de usuarios
      echo a7) Abrir Base de datos de administradores
      echo a8) Menu de Usuarios
      echo a9) Salir
echo.
echo **************
echo.
set/p dnsconf=Elije una accion: 
if %dnsconf%==a1 goto usuarios
if %dnsconf%==a2 goto info
if %dnsconf%==a3 goto fullinf
if %dnsconf%==a4 goto ficheros
if %dnsconf%==a5 goto adirectorio rem: NUEVO
if %dnsconf%==a6 goto dbusuarios  rem: NUEVO
if %dnsconf%==a7 goto dbadmin     rem: NUEVO
if %dnsconf%==a8 goto menuini
if %dnsconf%==a9 goto ssalir

rem: Usuarios
:usuarios
color 03
cls
echo.
echo LISTA DE USUARIOS REGISTRADOS EN LA DB
echo.
echo ::::::::::::::::::::
echo Nombre  # Rango   # IP
echo.
echo SkarYxD # ADM     # Localhost
echo ::::::::::::::::::::
pause>nul
goto menuadmin

rem: Informacion
:info
color 03
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo INFORMACION >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Directorio Actual: %CD%
echo Directorio Actual: %CD% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Fecha: %DATE%
echo Fecha: %DATE% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Hora: %TIME%
echo Hora: %TIME% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Numero Aleatorio: %RANDOM% 
echo Numero Aleatorio: %RANDOM% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Nombre del PC %COMPUTERNAME%
echo Nombre del PC %COMPUTERNAME% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt 
echo Nombre del usuario %USERNAME%
echo Nombre del usuario %USERNAME% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Directorio raiz del HD %SYSTEMROOT%
echo Directorio raiz del HD %SYSTEMROOT% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Directorio en que te encuentras %CD%
echo Directorio en que te encuentras %CD% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Directorio de Registros C:\Users\%USERNAME%\REDCONFIG_LOGS\
echo Directorio de Registros C:\Users\%USERNAME%\REDCONFIG_LOGS\ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Numero de procesadores %NUMBER_OF_PROCESSORS%
echo Numero de procesadores %NUMBER_OF_PROCESSORS% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo Datos guardados en C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo +++++++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
start C:\Users\%USERNAME%\REDCONFIG_LOGS\info.txt
pause>nul
goto menuadmin

rem: INFORMACION COMPLETA
:fullinf
color 03
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
echo INFORMACION COMPLETA >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
net user >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
hostname >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
systeminfo >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
systeminfo %hostname% | find "K" >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
echo Datos guardados en C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
echo +++++++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
start C:\Users\%USERNAME%\REDCONFIG_LOGS\info_completa.txt
pause>nul
goto menuadmin

rem: FICHEROS
:ficheros
color 03
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
echo FICHEROS >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
echo FICHEROS
echo.
FOR %%f  IN (*) DO @echo %%f >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
FOR %%f  IN (*) DO @echo %%f 
echo.
echo Datos guardados en C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
echo +++++++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
start C:\Users\%USERNAME%\REDCONFIG_LOGS\ficheros.txt
pause>nul
goto menuadmin

:adirectorio
color 03
cls
echo.
echo Abriendo Directorio
call C:\Users\%USERNAME%\REDCONFIG_LOGS\
start C:\Users\%USERNAME%\REDCONFIG_LOGS\
echo.
goto menuadmin

:dbusuarios
color 03
cls
print C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
echo Editado - %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
start C:\Users\%USERNAME%\REDCONFIG_LOGS\db_usuarios.txt
goto menuadmin

:dbadmin
color 03
cls
print C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
echo Editado - %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
start C:\Users\%USERNAME%\REDCONFIG_LOGS\db_administradores.txt
goto menuadmin

:ssalir
color 03
cls
echo ¿Realmente quieres salir?
set/p dnsconf=Salir (S) - No (N): 
echo.
if %dnsconf%==s exit
if %dnsconf%==S exit
if %dnsconf%==n goto menuadmin
if %dnsconf%==N goto menuadmin

rem: MENU INICIO
:menuini
color 37
cls
echo Hora Actual: %time%
echo.
echo Bienvenido %nombre% a RED CONFIG v1.4
echo.
rem: INICIO DE REGISTRO DATOS
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo REGISTRO LOG_USER.TXT >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Usuario: %nombre%  >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Rango: Usuario >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Usuario PC: %USERNAME% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Hora: %time% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Fecha: %date% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Directorio: %CD% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Registros: C:\Users\%USERNAME%\REDCONFIG_LOGS\ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo Version: 1.5.0 BETA >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\log_user.txt
rem: FIN REGISTRO DATOS
echo *****MENU*****
echo.
      echo 01) Vaciar DNS
      echo 02) Registrar nuevos DNS
      echo 03) Ver DNS Activos
      echo 04) Re Configurar IP
      echo 05) Renovar IP
      echo 06) Ver IPS
	echo 07) Tracert
      echo 08) NetStat
      echo 09) Nslookup
      echo 10) PING
      echo 11) Crear RED HotSpot
      echo 12) Creditos
      echo 13) Cambios/Actualizaciones
      echo 14) Salir
echo.
echo **************
echo.
set/p dnsconf=Elije una accion: 
if %dnsconf%==01 goto 01
if %dnsconf%==02 goto 02
if %dnsconf%==03 goto 03
if %dnsconf%==04 goto 04
if %dnsconf%==05 goto 05
if %dnsconf%==06 goto 06
if %dnsconf%==07 goto 07
if %dnsconf%==08 goto 08
if %dnsconf%==09 goto 09
if %dnsconf%==10 goto 10
if %dnsconf%==11 goto 11
if %dnsconf%==12 goto 12
if %dnsconf%==13 goto 13
if %dnsconf%==14 exit
if %dnsconf%==test goto test
if %dnsconf%==admin IF %nombre% EQU SkarYxD ( goto menuadmin )

:test
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\prueba.txt
set /p redes=Escribe un dispositivo ej: Wi-Fi* - Ethernet - Local*: 
ipconfig /all | find %redes% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\prueba.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\prueba.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\pruebas.txt
pause>nul
goto menuini

rem: VACIAR DNS
:01
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\flushdns.txt
ipconfig /flushdns
ipconfig /flushdns >> C:\Users\%USERNAME%\REDCONFIG_LOGS\flushdns.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\flushdns.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\flushdns.txt
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: REGISTRAR NUEVOS DNS
:02
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\registerdns.txt
ipconfig /registerdns
ipconfig /registerdns >> C:\Users\%USERNAME%\REDCONFIG_LOGS\registerdns.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\registerdns.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\registerdns.txt
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: VER LOS DNS ACTIVOS
:03
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\displaydns.txt
ipconfig /displaydns
ipconfig /displaydns >> C:\Users\%USERNAME%\REDCONFIG_LOGS\displaydns.txt 
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\displaydns.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\displaydns.txt
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini


rem: RE CONFIGURAR IP
:04
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\release.txt
echo Ejemplo: Wi-Fi* - Ethernet - Local*
set /p red=Introduce tu dispositivo: 
echo.
ipconfig /release %red% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\release.txt 
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\release.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\release.txt
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: RENOVAR IP
:05
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\renew.txt
echo Ejemplo: Wi-Fi* - Ethernet - Local*
set /p red=Introduce tu dispositivo: 
echo.
ipconfig /renew %red% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\renew.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\renew.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\renew.txt 
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: VER IPS
:06
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ipconfigall.txt
ipconfig /all
ipconfig /all >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ipconfigall.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ipconfigall.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ipconfigall.txt 
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: TRACERT
:07
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\tracert.txt
set /p host=Escribe host o IP: 
@start cmd /k tracert %host%
cmd /k tracert %host% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\tracert.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\tracert.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\tracert.txt
goto menuini

rem: NETSTAT
:08
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\netstat.txt
@start cmd /k netstat -bo 10
cmd /k netstat -bo 10 >> C:\Users\%USERNAME%\REDCONFIG_LOGS\netstat.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\netstat.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\netstat.txt
goto menuini

rem: NSLOOKUP
:09
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\nslookup.txt
@start cmd /k nslookup
cmd /k nslookup >> C:\Users\%USERNAME%\REDCONFIG_LOGS\nslookup.txt
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\nslookup.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\nslookup.txt
goto menuini

rem: PING
:10
cls
echo.
echo ++++++++++++++ %date% ++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ping.txt
set /p ip_d=Escribe host o IP: 
cmd /k ping %ip_d% >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ping.txt
@start  cmd /k ping %ip_d%
echo +++++++++++++++++++++++++++++++++++++++++++++ >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ping.txt
echo. >> C:\Users\%USERNAME%\REDCONFIG_LOGS\ping.txt
goto menuini

rem: RED HOTSPOT
:11
cls
echo.
echo Herramienta en desarrollo.
goto menuini

rem: CREDITOS
:12
cls
echo.
echo ...................................
echo DATOS:
echo Autor: Joaquin Centurion
echo Fecha Creacion: 15/06/2018
echo Fecha Ult act: 11/05/2019
echo ...................................
echo Redes Sociales:
echo Facebook: facebook.com/joaquincentu
echo GitHub: github.com/joaqhoc/
echo GitHub: github.com/skaryxd/ (Secundaria)
echo Twitter: twitter.com/joaqho
echo Instagram: instagram.com/joaqhoc/
echo Gmail: Joaqhoc@gmail.com
echo Web: N/A
echo ...................................
echo.
echo Codigo Abierto para su uso y edicion.
echo.
echo Presione una tecla para ir al menu.
pause>nul
goto menuini

rem: Cambios / Actualizaciones
:13
cls
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 1
echo.
echo Ver: 1.0
echo.
echo Fecha Act: 18/06/2018
echo.
echo Comandos: Tracer/NetStat/Nslookup/Ping
echo.
echo Tipo de Act: Red
echo.
echo Descripcion: Se agregaron varias herramientas de Tracer NetStat Nslookup y Ping.
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 2
echo.
echo Ver: 1.1
echo.
echo Fecha Act: 19/06/2018
echo.
echo Comandos: N/A
echo.
echo Tipo de Act: Menu Admin
echo.
echo Descripcion: Se agrego un menu de administracion complejo para modificar ciertos parametros.
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 3
echo.
echo Ver: 1.2
echo.
echo Fecha Act: 02/10/2018
echo.
echo Comandos: N/A
echo.
echo Tipo de Act: Menu Admin
echo.
echo Descripcion: Menu de usuarios
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 4
echo.
echo Ver: 1.2
echo.
echo Fecha Act: 02/10/2018
echo.
echo Comandos: N/A
echo.
echo Tipo de Act: Registro
echo.
echo Descripcion: Guarda archivo de Texto con datos del administrador o usuarios que inicia el BATCH.
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 5
echo.
echo Ver: 1.3
echo.
echo Fecha Act: 10/05/2019
echo.
echo Comandos: Hostear
echo.
echo Tipo de Act: Red
echo.
echo Descripcion: Crea una red hotspot.
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 6
echo.
echo Ver: 1.4
echo.
echo Fecha Act: 11/05/2019
echo.
echo Comandos: N/A
echo.
echo Tipo de Act: Usuarios
echo.
echo Descripcion: Nuevos usuarios agregados.
echo.
echo Presione una tecla para ir al menu.
echo ...................................
echo.
echo ...................................
echo Cambios y Actualizaciones
echo.
echo ID Act: 7
echo.
echo Ver: 1.5 BETA
echo.
echo Fecha Act: 11/05/2019
echo.
echo Comandos: N/A
echo.
echo Tipo de Act: Nueva mejoras y version actualizada.
echo.
echo Descripcion: Arreglo de rangos Admin/Vip/User/Visitante
echo.
echo Rango Admin: Acceso total al sistema.
echo Rango VIP: Acceso a registros y herramientas privadas.
echo Rango User: Acceso limitado a herramientas.
echo Rango Visitante: Solo puede ver registros y no puede editar.
echo.
echo Ahora podras encontrar los registros en: C:\Users\%USERNAME%\REDCONFIG_LOGS\
echo.
echo Presione una tecla para ir al menu.
echo ...................................
pause>nul
goto menuini