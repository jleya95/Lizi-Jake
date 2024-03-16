<template>
  <div class="home">
    <home-picture-component></home-picture-component>
    <testimonial-carousel-component></testimonial-carousel-component>
    <contact-form></contact-form>
    <social-media-icons-mobile-component></social-media-icons-mobile-component>
  </div>
</template>

<script>
import ContactForm from '@/components/ContactForm.vue'
import TestimonialCarouselComponent from '../components/TestimonialCarouselComponent.vue';
import HomePictureComponent from '@/components/HomePictureComponent.vue';
import SocialMediaIconsMobileComponent from '../components/SocialMediaIconsMobileComponent.vue';

export default {
  components: {
    ContactForm,
    TestimonialCarouselComponent,
    HomePictureComponent,
    SocialMediaIconsMobileComponent
  }
};
</script>

<style>
.home{
  margin-top: 5%;
  background-color: rgba(255, 255, 255, 0.777);
  margin-left: 10%;
  margin-right: 10%;
  border-radius: 2%;
  padding-bottom: 2%;
  padding-top: 2%;
}

@media screen and (max-width: 1024px) {
  .home{
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