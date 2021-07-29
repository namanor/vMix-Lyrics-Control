sc create "vMix Lyrics Service" binPath="%CD%/vMixController.exe" start=auto

sc failure "vMix Lyrics Service" actions= restart/60000/restart/60000/""/60000 reset= 86400

@REM netsh advfirewall firewall add rule name="vMix Lyrics Service" protocol=tcp localport=5050  dir=in  action=allow

sc start "vMix Lyrics Service"