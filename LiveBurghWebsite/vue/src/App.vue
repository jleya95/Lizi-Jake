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
export default{

  components: {
    NavBarComponent,
  }
}
</script>

<style>
#Home{
  background: url('/src/img/undefined-high.gif') center/cover no-repeat fixed;
  margin-left: 10%;
    margin-right: 10%;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    margin-top: 5%;
  
}
#site {
  background-color: black; /* Set the background color of the entire website */
  overflow-x: hidden;
}
/* #Events{
  background-color: rgb(33, 9, 49);
}
#ContactUs{
  background-color: rgb(26, 7, 40);
}
#Shop{
  background-color: rgb(33, 9, 49);
}
#About{
  background-color: rgb(26, 7, 40);
} */

@media screen and (max-width: 900px) {
  #Home{
  background: url('/src/img/undefined-high.gif') center/cover no-repeat fixed;
  background-size: contain;
  background-position: center; 
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
