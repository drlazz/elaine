# Elaine
Elaine is a free hybrid synthesizer made with Csound and Cabbage. / Elaine es un sintetizador híbrido gratuito desarrollado mediante Csound y Cabbage.

# Instrucciones de instalación

- Abrir el archivo "ElaineSetup64.exe" ubicado en Output y descargarlo (sin usar botón derecho + descargar). Después ejecutar. 

- Marcar "Installs Csound" si Csound no se encuentra instalado actualmente en el equipo (requiere reinicio del ordenador).

- Marcar "VST 64 Bits" si se desea utilizar como instrumento VST.

- Marcar la opción para añadir la aplicación a las variables de entorno.

# Problemas detectados con la ejecución

- Si el programa no se ejecuta correctamente (no se muestra nada en pantalla), abrir el video "RunProblems" y seguir indicaciones.

- Si el programa emite sonido de salida pero no funciona ninguna de las monitorizaciones del módulo principal, ni se actualizan los display al cambiar de forma de onda o al modificar los parámetros ADSR de una envolvente, puede ser debido a algún problema con el controlador de sonido. Se ha verificado el funcionamiento correcto con ASIO4ALL y con los controladores de la Focusrite Scarlet 2i4. Por otro lado, los problemas se han dado al utilizar los controladores nativos de Windows y DirectSound.

