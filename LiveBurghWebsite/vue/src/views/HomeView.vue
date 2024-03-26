<template>
  <div>
    <nav-bar-component></nav-bar-component>
    <div id="PageSingle">

      <section-component id="Home" :bgPosition="aboutBgPosition" >
        <home-component></home-component>
      </section-component>

      <section-component id="Events" :bgPosition="aboutBgPosition">
        <events-component></events-component>
      </section-component>

      <section-component id="ContactUs" :bgPosition="skillsBgPosition">
        <contact-us-component></contact-us-component>
      </section-component>

      <section-component id="Shop" :bgPosition="projectsBgPosition">
        <shop-component></shop-component>
      </section-component>
    </div>
    <router-view></router-view>
  </div>
</template>

<script>

import NavBarComponent from '../components/NavBarComponent.vue';
import SectionComponent from '../components/SectionComponent.vue';
import HomeComponent from '../components/HomeComponent.vue';
import EventsComponent from '../components/EventsComponent.vue';
import ContactUsComponent from '../components/ContactUsComponent.vue';
import ShopComponent from '../components/ShopComponent.vue';


export default {
  components: {
    NavBarComponent,
    SectionComponent,
    HomeComponent,
    EventsComponent,
    ContactUsComponent,
    ShopComponent


  }
};
</script>

<style>
#PageSingle {
  height: 100vh;
  scrollbar-color: transparent transparent;
}
</style>