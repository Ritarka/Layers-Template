rm -f vhls_src/*
find \( -name "*.cpp" -o -name "*.h" \) ! -path "*/tb/*" ! -path "*/vhls_src/*" ! -path "*/proj/*" -print0 | while read -d $'\0' file
do
    echo $file
    #echo "vhls_src/$(echo $file | sed 's|^./||' | sed 's/\//_/g')"
    ln -s ".${file}" "vhls_src/$(echo $file | sed 's|^./||' | sed 's/\//_/g')"
done

find -type d -name "layer*" ! -path "*/tb/*" ! -path "*/vhls_src/*" ! -path "*/proj/*" -print0 | while read -d $'\0' dir
do
    echo $dir
    ln -s ".${dir}" "vhls_src/$(echo $dir)"
done


#| sed 's|^./||'
# for f in $FILES
# do
#   echo "Processing $f file..."
#   # take action on each file. $f store current file name
#   # cat "$f"
# done