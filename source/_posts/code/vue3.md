
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
