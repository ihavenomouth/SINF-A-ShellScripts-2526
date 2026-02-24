#!/bin/bash


## 3. Buscador de errores en Log

# Crea un script que busque las palabras "session opened" en el fichero de logs llamado `/var/log/auth.log`.

# Por ejemplo:
# ```sh
# 2026-02-17T22:17:01.709595+01:00 j-roy CRON[144683]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
# 2026-02-18T10:46:36.333260+01:00 j-roy sddm-helper: pam_unix(sddm-greeter:session): session opened for user sddm(uid=116) by sddm(uid=0)
# 2026-02-18T10:46:36.382316+01:00 j-roy (systemd): pam_unix(systemd-user:session): session opened for user sddm(uid=116) by sddm(uid=0)
# 2026-02-18T10:46:43.143093+01:00 j-roy sddm-helper: pam_unix(sddm:session): session opened for user javier(uid=1000) by javier(uid=0)
# 2026-02-18T10:46:43.192176+01:00 j-roy (systemd): pam_unix(systemd-user:session): session opened for user javier(uid=1000) by javier(uid=0)
# 2026-02-18T10:47:01.324014+01:00 j-roy sudo: pam_unix(sudo:session): session opened for user root(uid=0) by javier(uid=1000)
# 2026-02-18T10:55:01.350720+01:00 j-roy CRON[6013]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
# 2026-02-18T11:05:01.372732+01:00 j-roy CRON[6630]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
# 2026-02-18T11:15:01.395713+01:00 j-roy CRON[7744]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
# ```

# De toda esa información sólo nos interesa la fecha y hora y la parte que indica el usuario involucrado. Pero sólo si el uid es mayor o igual que 1000.
# ```sh
# 2026-02-18 10:46:43 javier(uid=1000)
# 2026-02-18 10:46:43 javier(uid=1000)
# ```


ftemp=$( mktemp )

cat /var/log/auth.log | grep "session opened" | cut -d " " -f1,9 > $ftemp

while read linea;do
  # 2026-02-23T19:55:01.135917+01:00 root(uid=0)
  uid=$( echo $linea | cut -d "=" -f2 | cut -d ")" -f 1 )
  if [ $uid -ge 1000 ];then
    fechaYHorA=$( echo $linea | cut -d " " -f1 | cut -d "." -f1 | tr "T" " " )
    usuario=$( echo $linea | cut -d " " -f2 )
    echo "$fechaYHorA $usuario"

  fi
done < $ftemp