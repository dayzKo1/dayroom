
---
title: vue3
date: 2024-12-12 12:00:00
tags:
---


# 1、
```
 ​
 <script setup>
 import { ref, computed ,watch
   onBeforeMount,
   onMounted,
 ​
   onBeforeUpdate,
   onUpdated,
 ​
   onBeforeUnmount,
   onUnmounted,
 } from 'vue';
 ​
 const count = ref(1);

 const props = defineProps({
   foo: String
 })

  const emit = defineEmits(['click']);
 ​
 const onClick = () => {
   emit('click') 
 }

 const value = ref('this is a value')
 ​
 
 const reversedValue = computed(() => {
   return value.value
     .split('').reverse().join('');
 })

  ​
 const anotherCount = ref(0);

 watch(count, (newValue) => {
   anotherCount.value = newValue - 1;
 })

  watchEffect(() => {
   anotherCount.value = count.value - 1;
 })

onBeforeMount(() => {})
 onMounted(() => {})
 ​
 onBeforeUpdate(() => {})
 onUpdated(() => {})
 ​
 onBeforeUnmount(() => {})
 onUnmounted(() => {})

</script>

```

```
teleport将组件的内容渲染到 DOM 树中的指定位置。
  <teleport to="body">
    <div class="modal">This is a modal</div>
  </teleport>
```

```
Suspense 组件用于处理异步组件加载时的占位符显示，可以极大地提升用户体验。
<Suspense>
    <template #default>
      <AsyncComponent />
    </template>
    <template #fallback>
      <div>Loading...</div>
    </template>
  </Suspense>

```

```
<template>
  <button @click="handleClick">Click me</button>
</template>

<script setup>
import { defineEmits } from 'vue';

const emit = defineEmits(['customEvent']);

const handleClick = () => {
  emit('customEvent', 'Hello, Vue 3!');
};
</script>
```


```
provide 和 inject 用于在组件树中传递数据，避免了通过 props 层层传递的麻烦。


Parent.vue
<template>
  <Child />
</template>

<script setup>
import { provide } from 'vue';
import Child from './Child.vue';

provide('message', 'Hello from Parent!');
</script>

Child.vue<template>
  <div>{{ message }}</div>
</template>

<script setup>
import { inject } from 'vue';

const message = inject('message');
</script>


```