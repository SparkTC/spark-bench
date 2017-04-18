#!/bin/bash

# ############################################################### #
# PLEASE SET THE FOLLOWING VARIABLES TO REFLECT YOUR ENVIRONMENT  #
# ############################################################### #

export SPARK_HOME= # set this to the directory where Spark is installed in your environment, for example: /opt/spark-spark-2.1.0-bin-hadoop2.6
export SPARK_MASTER_HOST= # set this to the master for your environment, such as local[2], yarn, 10.29.0.3, etc.








# ######################################################################## #
# It is unlikely that you will need to modify anything below this message  #
# ######################################################################## #

WHEREILIVE=$(realpath $0)
BASEDIR=$(dirname $WHEREILIVE)
PARENTDIR="$(dirname "${BASEDIR}")"

SB_JAR=`ls ${PARENTDIR}/lib/`

export SPARK_BENCH_JAR=${PARENTDIR}/lib/${SB_JAR}

#TODO: change this to a template. Would make sense to wrap this change into building multiple spark-submits