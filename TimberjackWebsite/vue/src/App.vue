<template>

  <!-- <div id="capstone-app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="this.$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div> -->

  <nav-bar-components></nav-bar-components>
  <router-view />
</template>


<script>

import NavBarComponents from './components/NavBarComponents.vue';

export default {
  components: {
    NavBarComponents
  }
}
</script>

<style>
html{
  background-color: unset;
}
</style>


