#!/bin/bash
WORKSPACE_FOLDER=$1
\sed -E 's|export (.*\=)\"?([^\"]*)\"?$|\1\2|' ${WORKSPACE_FOLDER}/scripts/create_env.sh \
    | \grep -v '#!' > ${WORKSPACE_FOLDER}/.env
