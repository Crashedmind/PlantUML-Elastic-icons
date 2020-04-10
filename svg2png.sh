#use ImageMagick Convert to convert svg files to png and put them in a png folder
#replace filename "-64-color.svg" with ".png" and replace "logo-" prefix with "elastic_"
# e.g. logo-apm-64-color.svg -> png/elastic_apm.png

mkdir png

for f1 in *.svg; do  

    echo $f1

    f2="${f1/logo-/}"
  
    #all other files end in "-64-color.svg" except this one logo-elastic-search-color-64.svg 
    #so if we find a filename with color-64.svg, then change to -64-color.svg for pattern matching purposes
    f2="${f2/-color-64.svg/-64-color.svg}"  
    echo $f2
    convert -density 1200 -resize 100x100 "$f1" png/"elastic_${f2/%-64-color.svg/.png}"
done;




