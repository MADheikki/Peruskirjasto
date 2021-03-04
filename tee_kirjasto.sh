#!/bin/bash

SALASANA=$(cat salasana.txt)
KIRJASTON_HAKEMISTO="Peruskirjasto"
ALIHAKEMISTON_NIMI="Peruskirjasto-objektit"

shopt -s expand_aliases
alias LP_XMLConverter21="/Users/hema/Documents/LibDev\ Toolkit\ 21\ \(3006\)/Tool/OSX/MakeGDLLib_X86/LP_XMLConverter.app/Contents/MacOS/LP_XMLConverter"
alias LP_XMLConverter22="/Users/hema/Documents/LibDev\ Toolkit\ 22\ \(3013\)/Tool/OSX/MakeGDLLib_X86/LP_XMLConverter.app/Contents/MacOS/LP_XMLConverter"
alias LP_XMLConverter23="/Applications/GRAPHISOFT/ARCHICAD\ 23/ARCHICAD\ 23.app/Contents/MacOS/LP_XMLConverter.app/Contents/MacOS/LP_XMLConverter"
alias LP_XMLConverter24="/Applications/GRAPHISOFT/ARCHICAD\ 24/ARCHICAD\ 24.app/Contents/MacOS/LP_XMLConverter.app/Contents/MacOS/LP_XMLConverter"



LP_XMLConverter23 l2x "$KIRJASTON_HAKEMISTO" temp_xml
LP_XMLConverter23 x2l -password $SALASANA temp_xml "$ALIHAKEMISTON_NIMI"

LP_XMLConverter23 createcontainer "Peruskirjasto 24 $(date +"%Y-%m-%d").lcf" "$ALIHAKEMISTON_NIMI"

rm -r temp_xml "$ALIHAKEMISTON_NIMI"
