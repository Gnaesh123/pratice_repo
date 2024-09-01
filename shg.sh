read CHAR
if [[ "$CHAR" -eq "Y && y" ]]
then 
     echo "YES"
else [[ "$CHAR" -eq "N && n" ]]
     echo "NO"
fi
