sc create "vMix Lyrics Service" binPath=%CD%/vMixController.exe

netsh firewall add allowedprogram program=%CD%/vMixController.exe

sc start "vMix Lyrics Service"