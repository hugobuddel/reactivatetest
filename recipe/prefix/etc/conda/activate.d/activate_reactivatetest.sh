echo "This is the start of the activate script."

echo "A temporary directory is created to put some files in."
export REACTIVATETESTPATH=/some/temporary/directory
echo "Going to put temporary files in $REACTIVATETESTPATH"

echo "The PATH is backed up and appended to."
export PATH_BACKUP="${PATH}"
export PATH="/some/new/path:${PATH}"
echo "Old PATH is ${PATH_BACKUP}"
echo "New PATH is ${PATH}"

echo "This is the end of the activate script."
