
---

title: build问题
date: 2024-12-13 12:00:00
tags:
  - code
---

1、解决ReferenceError: primordials is not defined问题
------------------------------------------------------
<https://blog.csdn.net/qiqi_zhangzz/article/details/106599233>
```json
1️⃣新建npm-shrinkwrap.json文件
添加：
{
  "dependencies": {
    "graceful-fs": {
      "version": "4.2.3"
    }
  }
}
2️⃣删除node_modules文件夹 
3️⃣npm i
```

2、vue生产环境打包产物静态资源路径问题 BASE_URL
------------------------------------------------------
```html
    <script src="<%= BASE_URL %>pdfjs/pdf.js"></script>
    <script>
      pdfjsLib.GlobalWorkerOptions.workerSrc = '<%= BASE_URL %>pdfjs/pdf.worker.js';
    </script>
```

3、TypeError: Cannot read property '__ob__' of undefined
------------------------------------------------------
 因为在某个组件componentA中引入的另一个组件componentB中保留无效或者与组件componentA重叠的 data(){}，组件   ComponentB 根据条件加载或销毁，即带有 v-if，当 ComponentB 销毁时会出现上述问题，去掉ComponentB 中data() {}的内容 或者写正确，问题就能解决。

```js
data() {} 

```
4、
------------------------------------------------------