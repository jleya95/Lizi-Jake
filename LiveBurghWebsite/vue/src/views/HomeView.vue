<template>
  <div>
    <nav-bar-component></nav-bar-component>
    <div id="PageSingle">

      <section-component id="Home" :bgPosition="homeBgPosition">
        <home-component></home-component>
      </section-component>

      <section-component id="Events" :bgPosition="eventsBgPosition">
        <events-component></events-component>
      </section-component>

      <section-component id="Construction" :bgPosition="constructionBgPosition">
        <under-construction-component></under-construction-component>
      </section-component>

      <section-component id="About" :bgPosition="aboutBgPosition">
        <about-component></about-component>
      </section-component>

      <section-component id="ContactUs" :bgPosition="contactBgPosition">
        <contact-us-component></contact-us-component>
      </section-component>

      <section-component id="Shop" :bgPosition="shopBgPosition">
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
import AboutComponent from '../components/AboutComponent.vue';
import UnderConstructionComponent from '../components/UnderConstructionComponent.vue'


export default {
  components: {
    NavBarComponent,
    SectionComponent,
    HomeComponent,
    EventsComponent,
    ContactUsComponent,
    ShopComponent,
    AboutComponent,
    UnderConstructionComponent
  }
};
</script>

<style>
#PageSingle {
  height: 100vh;
  scrollbar-color: transparent transparent;
}

#Home {
  display: flex;
  align-items: flex-end;
}
</style>