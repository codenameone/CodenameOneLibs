#!/bin/sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

for f in cn1libs/*.cn1lib
do 
    echo "Processing $f .."; 
    mkdir temp
    unzip $f stubs.zip -d temp
    unzip temp/stubs.zip -d temp
    s=$(basename ${f%.*})
    echo Directory is ${s%}
    mkdir ~/Dropbox/website/javadoc/${s%}
    find temp -name "*.java" | xargs /Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/bin/javadoc -Xdoclint:none -protected -classpath ~/dev/cn1/CodenameOne/dist/CodenameOne.jar -d ~/Dropbox/website/javadoc/${s}
    rm -Rf temp
done