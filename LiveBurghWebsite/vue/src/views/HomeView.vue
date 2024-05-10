<template>
  <div>
    <nav-bar-component></nav-bar-component>
    <div id="PageSingle">

      <section-component id="Home" :bgPosition="homeBgPosition">
        <home-component></home-component>
      </section-component>

      <section-component id="Events" :bgPosition="aboutBgPosition">
        <events-component v-if="!mobileView"></events-component>
        <events-mobile-component v-if="mobileView"></events-mobile-component>
      </section-component>

      <section-component id="About" :bgPosition="aboutBgPosition">
     <about-component v-if="!mobileView"></about-component>
     <about-mobile-component v-if="mobileView"></about-mobile-component>
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
import AboutMobileComponent from '../components/AboutMobileComponent.vue';
import EventsMobileComponent from '../components/EventsMobileComponent.vue'


export default {
  components: {
    NavBarComponent,
    SectionComponent,
    HomeComponent,
    EventsComponent,
    ContactUsComponent,
    ShopComponent,
    AboutComponent,
    UnderConstructionComponent,
    AboutMobileComponent,
    EventsMobileComponent
  },
  data() {
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