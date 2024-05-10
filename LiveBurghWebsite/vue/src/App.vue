<template>
  <div id="site">
    <!-- <div id="capstone-app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div> -->


    <nav-bar-component></nav-bar-component>

    <router-view />
  </div>
</template>

<script>

import NavBarComponent from './components/NavBarComponent.vue';
export default {

  components: {
    NavBarComponent,
  },
}
</script>

<style>
#Home {
  background: url('../src/img/undefined-high.gif') center/cover no-repeat fixed;
  margin-left: 10%;
  margin-right: 10%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  overflow-x: hidden;


}

#site {
  background: url('../src/img/background2.jpg');
  overflow-x: hidden;
}
#Construction{
  background-color: rgb(26, 7, 40);
}

@media screen and (max-width: 900px) {
  #Home {
  background: url('../src/img/undefined-high.gif') center/cover no-repeat fixed;
  margin-left: 2%;
  margin-right: 2%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  overflow-x: hidden;


}
}
</style>
