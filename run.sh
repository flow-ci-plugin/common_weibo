# ************************************************************
#
# This step will use weibo to send msg
#
#   Variables used:
#     $FLOW_WEIBO_MESSAGE_USER_IDS
#     $FLOW_WEIBO_MESSAGE_DESCRIPTION
#
#   Outputs:
#
# ************************************************************

set +e
curl -sSL $FLOW_WEIBO_MESSAGE_URL\
  -H 'Pragma: no-cache' \
  -H 'Content-Type: multipart/form-data;' \
  -H 'Accept: */*' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -d "user_id=$FLOW_USER_ID&job_id=$FLOW_JOB_ID&project_id=$FLOW_PROJECT_ID&user_ids=$FLOW_WEIBO_MESSAGE_USER_IDS&message=$FLOW_WEIBO_MESSAGE_DESCRIPTION"

flow_result $?