# Karate(p) SaverScripts
Scripts that conserve battery life on Lenovo k6 devices.
Scripts have to be copied to /data/adb/service.d/ while making sure it has the extension as .sh and the file's permissions are set to 755 (-rwxr-xr-x).
Or to be used with kernel managers that support script execution.

- For those who will use kernel managers to execute the script, please remove the first line (sleep 30) as it will create a 30 second delay if not removed.
- Those who will copy the script directly to /data/adb/seevice.d/ then there is no need to change anything.
