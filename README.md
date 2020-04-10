# PlantUML  Elastic Icons
Icons from [elastic](www.elastic.co) for use with PlantUML:
1. here to share with kind permission from the nice guys at Elastic community team. Thanks to Max, David, Phillip for prompt feedback!
2. original icons in svg format from Elastic [here](https://www.elastic.co/brand) 


## QuickStart










I wanted to architect and draw a system that use Elastic products in AWS.

Plantuml sprites for creating diagrams with Elastic components.



# Converting the icon set to PlantUML Sprites

```
git clone git@github.com:Crashedmind/PlantUML-Elastic-icons.git

# Setup a temporary directory to work in
mkdir tmp
cd tmp/

# Download and unzip the svg icons from elastic.co
./get_elastic_logos.sh

# Convert the svg icons in color folder to 100x100 png
cd color
../../svg2png.sh
ls ./png/

# Convert the png icons to Plantuml sprites

## Get png to PlantUML conversion script
git clone git@github.com:milo-minderbinder/AWS-PlantUML.git
cd AWS-PlantUML

## Create PlantUML sprites from Elastic png icons
python3 puml.py -c ./puml.ini ../color/png/  #sprites output to ./dist/elastic/

# Move folder with created PlantUML Elastic sprites to top level
mv  ./dist/elastic ../../plantuml-elastic

```

# PlantUML Sprite Colors
Sprites are monochrome per https://plantuml.com/sprite
Elastic icons are multi-color.

If desired, the background color can be changed e.g. so it's easier to see Elastic products versus AWS products in a diagram.

This can be done in the plantuml source file via
````
skinparam componentBackgroundColor #00BFB3
````
where "#00BFB3" is the green color used in the elastic svgs e.g.

logo-elastic-search-color-64.svg 
````
        <path d="M47.7246,44.293 L47.7276,44.299 C42.7746,50.227 35.3286,54.001 26.9996,54.001 C16.4006,54.001 7.2326,47.889 2.8136,39.001 L38.0056,39.001 C40.5306,39.001 42.9886,39.871 44.9206,41.497 C45.9246,42.342 46.8636,43.262 47.7246,44.293" id="Fill-6" fill="#00BFB3"></path>
````

https://forum.plantuml.net/8798/change-color-of-sprite
<&x{scale=2.25,color=#FF0000}> someBadField
 <$star{scale=0.50,color=#FF0000}> other
 <&x*2.25,color=green> someBadField
 <$star*0.50,color=blue> other