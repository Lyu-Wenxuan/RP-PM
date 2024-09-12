<template>
  <div>
    <h1 v-if="$store.getters.roles[0] !== 'common'">浩奇培训信息后台管理系统 —— 后台</h1>
    <h1 v-if="$store.getters.roles[0] === 'common'">浩奇培训信息后台管理系统 —— 前台</h1>
  </div>
</template>
