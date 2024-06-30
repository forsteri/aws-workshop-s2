#!/bin/bash

STACK_NAME=Haji-NW
TEMPLATE_FILE=Haji-Repo/CFnTemplate/network-template-novpce.yaml

# スタックの作成または更新
aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file $TEMPLATE_FILE \
    --capabilities CAPABILITY_NAMED_IAM

# デプロイの結果を確認
if [ $? -eq 0 ]; then
    echo "スタック $STACK_NAME の作成/更新に成功しました。"
else
    echo "スタック $STACK_NAME の作成/更新に失敗しました。"
fi
