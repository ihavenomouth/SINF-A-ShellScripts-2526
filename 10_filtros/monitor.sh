#!/bin/bash

# ## 2. Monitor de espacio en disco

# **Objetivo:** Uso de tuberías (`|`) y limitación de salida.
# Haz un script que identifique el % de uso de las particiones en el sistema.

# * Utiliza el comando `df -h`.
# * Debes mostrar sólo aquellas líneas que comiencen por /dev/sd.
# * De las líneas sólo nos interesa el dispositivo (por ejemplo /dev/sda1) y el % de uso.

df -h | grep "^/dev/sd" | tr -s " " | cut -d " " -f1,5