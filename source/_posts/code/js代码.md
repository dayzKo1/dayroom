---
title: js代码
date: 2024-11-29 15:54:08
tags:
---
# 1、交换变量的值
```
let a = 1, b = 2;

[a, b] = [b, a];
```

# 2、对象解构
```
const { name, age } = { name: '张三', age: 23 };
```

# 3、浅克隆对象
```
const originalObj = { name: '张三', age: 24 };

const clonedObj = { ...originalObj };
```

# 4、合并对象
```
const obj1 = { name: '张三' };
const obj2 = { age: 22 };

const mergedObj = { ...obj1, ...obj2 };
```

# 5、清理数组
```
const arr = [ 0, 1, false, 2, '', 3 ];

const cleanedArray = arr.filter(Boolean);
```

# 5、清理数组
```
const arr = [ 0, 1, false, 2, '', 3 ];

const cleanedArray = arr.filter(Boolean);
```

# 6、将 NodeList 转换为数组
```
const nodesArray = [ ...document.querySelectorAll('div') ];
```

# 7、检查数组是否满足指定条件
```
const arr = [ 1, 2, 3, -5, 4 ];

const hasNegativeNumbers = arr.some(num => num < 0);
```

# 8、删除数组重复项
```
const arr = [1, 2, 2, 3, 4, 4, 5];

const unique = [...new Set(arr)];
```

# 8、取两个数组的交集
```
const arr1 = [1, 2, 3, 4];
const arr2 = [2, 4, 6, 8];

const intersection = arr1.filter(value => arr2.includes(value));
```

# 9、求数组元素的总和
```
const arr = [1, 2, 3, 4];

const sum = arr.reduce((total, value) => total + value, 0);
```

# 9、根据指定条件判断，是否给对象的属性赋值
```
const condition = true;
const value = '你好，世界';

const newObject = {...(condition && {key: value})};
```
# 10、使用变量作为对象的键
```
const dynamicKey = 'name';
const value = '张三';

const obj = {[dynamicKey]: value};
```

# 11、对象数组，根据对象的某个key求对应值的总和
```
const arrayOfObjects = [{x: 1}, {x: 2}, {x: 3}];

const sumBy = (arr, key) => arr.reduce((acc, obj) => acc + obj[key], 0);

sumBy(arrayOfObjects, 'x'));
```

# 12、将 url 问号后面的查询字符串转为对象
```
const query = 'name=John&age=30';

const parseQuery = query => Object.fromEntries(new URLSearchParams(query));
```

# 13、求某对象所有属性值的最大值
```
const scores = { math: 95, chinese: 99, english: 88 };

const maxObjectValue = obj => Math.max(...Object.values(obj));

maxObjectValue(scores);
```

# 14、判断对象的值中是否包含有某个值
```
const person = { name: '张三', age: 30 };

const hasValue = (obj, value) => Object.values(obj).includes(value);

hasValue(person, 30);
```

# 15、安全访问深度嵌套的对象属性
```
const user = { profile: { name: '张三' } };

const userName = user.profile?.name ?? '匿名';

此代码首先演示了如何使用可选链运算符 (?.) 安全地访问user.profile的name值。如果user.profile是undefined或null，它会短路并返回undefined，从而避免潜在的类型错误TypeError。

然后，使用空值合并运算符 (??) 检查左侧是否为null或undefined，如果是，则使用默认值'匿名'。这可确保后备值不会是其他假值（如''或0）。这对于访问数据结构中可能不存在某些中间属性的深层嵌套属性非常有用。

在 JavaScript 中，空值合并运算符 (??) 和逻辑或 (||) 都可以用于提供默认值，但它们处理假值的方式有所不同。

在上面的例子中，如果把??改为||，行为会稍微有些不同。||的左侧如果为假值，它将会返回右侧的值。JavaScript 中的假值包括null、undefined、0、NaN、''（空字符串）和false。这意味着||左边的值不仅仅是null或undefined，如果还是其他假值，那么都将返回右侧的值。

```

# 16、条件执行语句、条件赋值
```
const isEligible = true;
isEligible && performAction();

const isEligible = true;
let value = '';
isEligible && (value = '条件达成');
```

# 17、创建包含值为指定数字范围的数组
```
const range = Array.from({ length: 5 }, (_, i) => i + 1);
```

# 18、提取文件拓展名
```
const fileName = 'example.png';

const getFileExtension = str => str.slice(((str.lastIndexOf(".") - 1) >>> 0) + 2);
```

