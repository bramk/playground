#!/bin/sh

#TODO make this into a ctl script

NODEAGENT_OP=$1
NODEAGENT_ID=$2

NODEAGENT_CMD="/usr/bin/java -Dagent.identification.agentid=$NODEAGENT_ID -Dagent.discovery.serverurls=http://172.17.8.1:8080 -jar /tmp/org.apache.ace.agent.launcher.felix.jar"

case "$NODEAGENT_OP" in
	start)

		if [ "$NODEAGENT_ID" == '' ]; then
			echo "Usage: $0 {start} {nodeid}"
			exit 1
		fi

                echo $NODEAGENT_CMD
 		$NODEAGENT_CMD
		;;

	*)
		echo "Usage: $0 {start} {nodeid}"
		exit 1
		;;
esac

exit 0

