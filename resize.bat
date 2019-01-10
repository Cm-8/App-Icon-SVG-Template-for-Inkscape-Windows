rem !/bin/bash
@ECHO OFF

SET INK="\Program Files\Inkscape\inkscape.exe"

rem if [[ -z "%1" ]] 
rem then
rem 	echo "SVG file needed."
rem 	exit;
rem fi

set SVG="%1"
set BASE=%2

ECHO ON


rem  iPhone Spotlight iOS5,6 Settings iOS and iPad 5-7 20pt
%INK% -z -D -e "%BASE%-20.png" -f 	%SVG% -w 20 -h 20
%INK% -z -D -e "%BASE%-20@2x.png" -f 	%SVG% -w 40 -h 40
%INK% -z -D -e "%BASE%-20@3x.png" -f 	%SVG% -w 60 -h 60

rem  iPhone Spotlight iOS5,6 Settings iOS and iPad 5-7 29pt
%INK% -z -D -e "%BASE%-29.png" -f 	%SVG% -w 29 -h 29
%INK% -z -D -e "%BASE%-29@2x.png" -f 	%SVG% -w 58 -h 58
%INK% -z -D -e "%BASE%-29@3x.png" -f 	%SVG% -w 87 -h 87

rem  iPhone Spotlight iOS7 40pt
%INK% -z -D -e "%BASE%-40@2x.png" -f 	%SVG% -w 80 -h 80
%INK% -z -D -e "%BASE%-40@3x.png" -f 	%SVG% -w 120 -h 120

rem  iPhone App iOS 5,6 57pt
%INK% -z -D -e "%BASE%-57.png" -f 	%SVG% -w 57 -h 57
%INK% -z -D -e "%BASE%-57@2x.png" -f 	%SVG% -w 114 -h 114

rem  iPhone App iOS 7 60pt
%INK% -z -D -e "%BASE%-60@2x.png" -f 	%SVG% -w 120 -h 120
%INK% -z -D -e "%BASE%-60@3x.png" -f 	%SVG% -w 180 -h 180

rem  iPad Spotlight iOS 7 40pt
%INK% -z -D -e "%BASE%-40.png" -f 	%SVG% -w 40 -h 40

rem  iPad Spotlight iOS 5,6 50pt
%INK% -z -D -e "%BASE%-50.png" -f 	%SVG% -w 50 -h 50
%INK% -z -D -e "%BASE%-50@2x.png" -f 	%SVG% -w 100 -h 100

rem  iPad App iOS 5,6 72pt
%INK% -z -D -e "%BASE%-72.png" -f 	%SVG% -w 72 -h 72
%INK% -z -D -e "%BASE%-72@2x.png" -f 	%SVG% -w 144 -h 144

rem  iPad App iOS 7  76pt
%INK% -z -D -e "%BASE%-76.png" -f 	%SVG% -w 76 -h 76 
%INK% -z -D -e "%BASE%-76@2x.png" -f 	%SVG% -w 152 -h 152

rem iTunes Artwork
%INK% -z -D -e "%BASE%-512.png" -f 	%SVG% -w 512 -h 512
%INK% -z -D -e "%BASE%-1024.png" -f 	%SVG% -w 1024 -h 1024

ren "%BASE%-512.png" iTunesArtwork.png
ren "%BASE%-1024.png" iTunesArtwork@2x.png
