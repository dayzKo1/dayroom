#!/bin/bash

# 添加所有更改
git add .

# 提交更改
git commit -m "update"

# 推送到远程仓库
git push 

hexo generate 

# 更新gh-pages
hexo deploy