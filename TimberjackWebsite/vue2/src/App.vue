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
  <p class="copyright">©2024 TimberJack Tree Services</p>

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
      // showNav: false,
    };
  },
  methods: {
    handleView() {
      this.mobileView = window.innerWidth <= 1024;
    }
  },
  created() {
    this.handleView();
    window.addEventListener('resize', this.handleView);
  }
}
</script>

<style>
html {
  background-color: unset;
}

.copyright {
  display: flex;
  color: rgb(217, 102, 42);
  font-size: 90%;
  margin-top: 1%;
  margin-right: 12%;
  justify-content: right;
}

@media screen and (max-width: 1024px) {
  .copyright {
    margin-right: 2%;
  }

}
</style>
