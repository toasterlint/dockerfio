#!/bin/bash

#set unless otherwise passed into the container
export JOB_NAME=${JOB_NAME:-read}

exec /usr/bin/fio /config/${JOB_NAME}job.fio --output /data/${JOB_NAME}.out
