<template>
    <div class="services">
        <h1 class="services-h1">OUR SERVICES</h1>
        <services-component v-if="!mobileView"></services-component>
        <services-mobile-component v-if="mobileView"></services-mobile-component>
        <social-media-icons-mobile-component></social-media-icons-mobile-component>
    </div>

</template>

<script>
import ServicesComponent from '@/components/ServicesComponent.vue'
import ServicesMobileComponent from '../components/ServicesMobileComponent.vue'
import SocialMediaIconsMobileComponent from '../components/SocialMediaIconsMobileComponent.vue';


export default {
    components: {
        ServicesComponent,
        ServicesMobileComponent,
        SocialMediaIconsMobileComponent
        
  
    },
    data: () => {
    return {
      mobileView: true,
      // showNav: false,
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
.services-h1 {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 1%;
    font-size: 200%;
    font-weight: bold;
    color: rgb(20, 91, 30);
}

.services {
    margin-top: 5%;
    background-color: rgba(255, 255, 255, 0.777);
    margin-left: 10%;
    margin-right: 10%;
    border-radius: 2%;
    padding-bottom: 2%;
    padding-top: 2%;
}

@media screen and (max-width: 800px) {
  .services{
  margin-top: 5%;
  background-color: rgba(255, 255, 255, 0.777);
  margin-left: 2%;
  margin-right: 2%;
  border-radius: 2%;
  padding-bottom: 2%;
  padding-top: 2%;
}

}
</style>