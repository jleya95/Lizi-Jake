<template>
    <div class="about">
        <h1 class="about-h1">ABOUT US</h1>
        <about-pic-carousel-component></about-pic-carousel-component>
        <social-media-icons-mobile-component></social-media-icons-mobile-component>
        
        
    </div>
</template>

<script>
import AboutPicCarouselComponent from '../components/AboutPicCarouselComponent.vue';
import SocialMediaIconsMobileComponent from '../components/SocialMediaIconsMobileComponent.vue';

export default {
    components: {
        AboutPicCarouselComponent,
        SocialMediaIconsMobileComponent
    
    }
}
</script>

<style>
.about{
  margin-top: 5%;
  background-color: rgba(255, 255, 255, 0.777);
  margin-left: 10%;
  margin-right: 10%;
  border-radius: 2%;
  padding-bottom: 2%;
  padding-top: 2%;
}

.about-h1 {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 1%;
    font-size: 200%;
    font-weight: bold;
    color: rgb(20, 91, 30);
}

@media screen and (max-width: 900px) {
  .about{
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
