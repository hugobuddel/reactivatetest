echo "This is the start of the deactivate script."

echo "The activate script set REACTIVATETESTPATH to ${REACTIVATETESTPATH}"
echo "Going to delete all temporary files:"
echo "(but not realy) rm ${REACTIVATETESTPATH}/*"

echo "Going to reset the PATH to PATH_BACKUP."
echo "PATH is ${PATH}"
echo "PATH_BACKUP is ${PATH_BACKUP}"
echo "(but not realy) export PATH=${PATH_BACKUP}"

echo "This is the end of the deactivate script."
