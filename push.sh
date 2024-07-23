#!/bin/bash

# 获取提交信息
echo "请输入提交信息："
read commit_message

# 添加所有更改
git add .

# 提交更改
git commit -m "$commit_message"

# 推送到远程仓库
git push origin dev
