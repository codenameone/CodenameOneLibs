# Codename One Libs

[Codename One](https://www.codenameone.com/) cn1libs are a binary format based on ZIP that allows developers to write generic Codename One code in the same way JAR's work in standard Java. 

However, unlike the jar file format cn1libs allow developers to embed native code for the various mobile platforms. They also include a beavy of other features such as proper code completion (with javadoc highlighting). 

This is a generic repository containing an index and cached versions of such libraries, you can browse this repository directly from the Codename One settings UI as it's contents is mirrored periodically to the Codename One servers.

## Building a cn1lib

Check out the [developer guide section](https://www.codenameone.com/manual/advanced-topics.html#_libraries_cn1lib) that covers native interfaces and the process of creating a cn1ib. 

Generally cn1libs are created via the IDE's by creating a new Codename One library and building it. 

## Adding Your Own cn1lib

If you are the author of a cn1lib and want it to be listed here go thru the following steps:

- Star and fork this project
- In your fork drag the cn1lib file into the [cn1libs directory](https://github.com/codenameone/CodenameOneLibs)
- In the [CN1Libs.xml file](https://github.com/codenameone/CodenameOneLibs/blob/master/CN1Libs.xml) click the edit button and add an entry for your lib

A few things to keep in mind when adding an entry:

- Version is an integer value to help us identify that the library has changed. Integers are more useful in that sense.
- The name is case sensitive and uniquely identifies your library. Don't change the case and make sure the name is correct

