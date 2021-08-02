#!/bin/bash
set -ex
CURRENT_TASKDEF=`aws ecs describe-task-definition --task-definition $TASKDEF_NAME`
CURRENT_TASKDEF_CONTAINERDEF=`echo $CURRENT_TASKDEF| jq --raw-output ".taskDefinition.containerDefinitions"`
TASKDEF_ROLE_ARN=`echo $CURRENT_TASKDEF| jq --raw-output ".taskDefinition.taskRoleArn"`
