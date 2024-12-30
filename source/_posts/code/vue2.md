
---
title: vue2
date: 2024-12-12 12:00:00
tags:
---


# 1、动态Watch
```
export default {
    data() {
        return {
          a: 1,
          unwatch: null,
        }
    },
    mounted() {
        this.unwatch = this.$watch('a', (newVal, oldVal) => {
          console.log('watch执行', oldVal, newVal);
        }, {
          immediate: true,
        })
    }
    beforeDestroy() {
        if (this.unwatch) {
            // 主动销毁watch
            this.unwatch();
            this.unwatch = null;
        }
    }
}
```

# 2、@hook 监听vue的生命周期钩子
```
监听子组件mounted
// 父组件 Home.vue
<template>
    <div>
       <Common @hook:mounted="commonMounted" />
    </div>
</template>

<script>
export default {
    methods: {
        commonMounted() {
            console.log('listen common mounted');
        }
    }
}
</script>

// 子组件 Common.vue
<script>
export default {
    mounted() {
      console.log('common mounted');
    }
}
</script>


export default {
    mounted() {
        const unwatch = this.$watch('a', (newVal, oldVal) => {
          console.log('watch执行', oldVal, newVal);
        }, {
          immediate: true,
        })
        // 这里使用 $once，当回调执行后便释放监听
        this.$once('hook:beforeDestroy', function () {
          unwatch();
        })
    },
}
```

# 3、Vue.mixin 全局混入
```

```

# 4、Vue.util.defineReactive 
把一个数据变成响应式的 也就是数据变化了会刷新页面
```

```