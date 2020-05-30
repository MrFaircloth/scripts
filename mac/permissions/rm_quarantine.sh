# removes quarantine from application

DIRECTORY=$1

if [ -z ${DIRECTORY} ]; then
    echo "Pass in a directory to remove from quarantine."
else
    attr -r -d com.apple.quarantine $DIRECTORY 
    if [ $? -eq 0 ]; then
        echo "Successfully removed Application from Quarantine."
    else
        echo "Something went wrong."
    fi
fi
