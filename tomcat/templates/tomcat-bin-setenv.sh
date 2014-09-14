#! /bin/sh

CATALINA_OPTS="$CATALINA_OPTS {{ tomcat.java.options }}"

# The hotspot server JVM has specific code-path optimizations
# which yield an approximate 10% gain over the client version.
CATALINA_OPTS="$CATALINA_OPTS -server"

export CATALINA_OPTS

echo "Using CATALINA_OPTS:"
for arg in $CATALINA_OPTS
do
    echo " " $arg
done
