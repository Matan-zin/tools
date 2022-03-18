if [ "$#" -ne "3" ]; then
   echo 'replace <what> <to> <file-name>'
else
    sed -i "s|$1|$2|g" $3
fi
