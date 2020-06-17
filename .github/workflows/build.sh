#!/bin/sh

qa_build_status=$(curl -u srinu:Srinuemb@9099 http://192.168.43.129:8080/job/Gitlab_Jenkins_Integration/94/consoleText | tail -1 | awk -F 'Finished:' '{print $2}' | tr -d '\r')
echo "$qa_build_status"
if [ "$qa_build_status" = " SUCCESS" ];then
echo "success"
exit 0
else
echo "failure"
exit 1
fi
