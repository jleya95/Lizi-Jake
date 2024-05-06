<template>
  <!-- <div id="capstone-app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div> -->

  <div>
    <nav-bar-component></nav-bar-component>
    <nav-bar-mobile-component v-if="mobileView"></nav-bar-mobile-component>
    <router-view />
  </div>
</template>

<script>

import NavBarComponent from './components/NavBarComponent.vue';
import NavBarMobileComponent from './components/NavBarMobileComponent.vue';
export default{

  components: {
    NavBarComponent,
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
      this.mobileView = window.innerWidth <= 900;
    }
  },
  created() {
    this.handleView();
    window.addEventListener('resize', this.handleView);
  }
}
</script>

<style>
#Home{
  background: url('/src/img/undefined-high.gif') center/cover no-repeat fixed;
}
#Events{
  background-color: rgb(26, 7, 40);
}
#ContactUs{
  background-color: rgb(26, 7, 40);
}
#Shop{
  background-color: rgb(26, 7, 40);
}
#About{
  background-color: rgb(26, 7, 40);
}

@media screen and (max-width: 900px) {
  #Home{
  background: url('/src/img/undefined-high.gif') center/cover no-repeat fixed;
}
#Events{
  background-color: rgb(26, 7, 40);
}
#ContactUs{
  background-color: rgb(26, 7, 40);
}
#Shop{
  background-color: rgb(26, 7, 40);
}
#About{
  background-color: rgb(26, 7, 40);
}
}
</style>
