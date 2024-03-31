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
    <router-view />
  </div>
</template>

<script>

import NavBarComponent from './components/NavBarComponent.vue';
export default{

  components: {
    NavBarComponent
  }

}
</script>

<style>
#Home{
  background: url('/src/img/background2.jpg') center/cover no-repeat fixed;
}
#Events{
  background-color: rgb(27, 27, 27);
}
#ContactUs{
  background-color: rgb(27, 27, 27);
}
#Shop{
  background-color: rgb(27, 27, 27);
}
</style>
