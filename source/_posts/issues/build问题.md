
---
title: build问题
date: 2024-12-13 12:00:00
tags:
---
## 1、解决ReferenceError: primordials is not defined问题
https://blog.csdn.net/qiqi_zhangzz/article/details/106599233

```
新建npm-shrinkwrap.json文件
添加：
{
  "dependencies": {
    "graceful-fs": {
      "version": "4.2.3"
    }
  }
}
```

## 2、vue生产环境打包产物  BASE_URL
```
    <script src="<%= BASE_URL %>pdfjs/pdf.js"></script>
    <script>
      pdfjsLib.GlobalWorkerOptions.workerSrc = '<%= BASE_URL %>pdfjs/pdf.worker.js';
    </script>
```
## 3、