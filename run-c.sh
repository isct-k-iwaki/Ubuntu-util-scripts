
#!/bin/bash

echo Running code $1

# todo : .c in filename
path=$(realpath $1)
output=$(echo $path | sed -E 's/(.*)\.c(.*)/\1.out\2/')

echo Compiling into $output
echo     $ gcc $1 -o $output
gcc $1 -o $output -lm
sucCompile=$?
echo $sucCompile
zero=0

if [ $sucCompile -eq $zero ]; then
    echo Compiled successfully
else
    echo Compiled unsuccessfully
    exit 1
fi

$output


