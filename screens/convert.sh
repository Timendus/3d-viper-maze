#!/bin/bash
#
# This script converts any PNG files (that use the right colours and dimensions)
# in this directory to .txt files, using ImageMagick and some Bash magic.

for file in *
do
  if [ "${file: -4}" == ".png" ]
  then
    echo "Converting '$file'..."
    filename="${file%%.*}.txt"
    echo "" > "$filename"

    for ((x=0;x<64;x+=16))
    do
      for ((y=0;y<32;y+=16))
      do
        # Read in the source file as RGB values, one per line
        values=`convert "$file" -crop 16x16+$x+$y rgb:- | xxd -ps | tr -d '\n' | fold -w6`

        # Convert RGB colours to two bit layers
        layer1=()
        layer2=()
        for value in $values
        do
          case $value in
            662200)
              layer1+='1'
              layer2+='1'
              ;;
            996601|795548)
              layer1+='0'
              layer2+='0'
              ;;
            ff6602)
              layer1+='0'
              layer2+='1'
              ;;
            ffcc01|ffc107)
              layer1+='1'
              layer2+='0'
              ;;
            *)
              echo "Unkown colour: $value"
          esac
        done

        # Convert binary layers to hexadecimal values
        layer1=`echo $layer1 | fold -w8`
        layer2=`echo $layer2 | fold -w8`
        layer1bytes=()
        layer2bytes=()
        for value in $layer1; do layer1bytes+=`printf '0x%x ' "$((2#$value))"`; done
        for value in $layer2; do layer2bytes+=`printf '0x%x ' "$((2#$value))"`; done

        # Output to file
        echo ": ${file%%.*}+$x+$y
  $layer1bytes
  $layer2bytes
" >> "$filename"
      done
    done
  fi
done
