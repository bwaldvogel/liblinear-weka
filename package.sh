#!/bin/sh

source ./build.env

PACKAGE=LibLINEAR
export CLASSPATH=$WEKA_DIR/bin:$JUNIT_JAR

VERSION=`git describe --tags` || exit 1
ANT="ant -Dpackage=$PACKAGE -Dversion=$VERSION -f build_package.xml"

$ANT clean
$ANT make_package
