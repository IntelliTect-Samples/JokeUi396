<template>
  
  <router-view v-slot="{ Component, route }">
    <transition name="router-transition" mode="out-in" appear>
      <component :is="Component" :key="route.path" />
    </transition>
  </router-view>
  
</template>

<script setup lang="ts">

</script>
