<template>

  <!-- <div id="capstone-app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="this.$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div> -->
<nav-bar-mobile-component v-if="mobileView"></nav-bar-mobile-component>
  <nav-bar-components v-if="!mobileView"></nav-bar-components>
  
  <router-view />
</template>


<script>

import NavBarComponents from './components/NavBarComponents.vue';
import NavBarMobileComponent from './components/NavBarMobileComponent.vue';

export default {
  components: {
    NavBarComponents,
    NavBarMobileComponent

  },
  data: () => {
    return {
      mobileView: true,
      showNav: false,
    };
  },
  methods: {
    handleView() {
      this.mobileView = window.innerWidth <= 800;
    }
},
created() {
    this.handleView();
    window.addEventListener('resize', this.handleView);
  }
}
</script>

<style>
html{
  background-color: unset;
}

</style>


