> src.tcl

#FILES=
find \( -name "*.cpp" -o -name "*.h" \) -not \( -path "*/tb/*" -o -path "*/vhls_src/*" \) -print0 | while read -d $'\0' file
do
    echo "add_files" $file >> src.tcl
    echo $file | sed 's|^./||' | sed 's/\//_/g'
done
#| sed 's|^./||'
# for f in $FILES
# do
#   echo "Processing $f file..."
#   # take action on each file. $f store current file name
#   # cat "$f"
# done