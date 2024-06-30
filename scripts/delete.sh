#!/bin/bash

STACK_NAME=my-test-stack

# スタックの削除
aws cloudformation delete-stack --stack-name $STACK_NAME

# 削除の完了を待つ
aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME

# 削除の結果を確認
if [ $? -eq 0 ]; then
    echo "スタック $STACK_NAME の削除に成功しました。"
else
    echo "スタック $STACK_NAME の削除に失敗しました。"
fi
