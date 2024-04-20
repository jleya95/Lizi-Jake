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
</style>
