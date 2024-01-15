<template>
  <div class="home">
    <home-picture-component></home-picture-component>
    <contact-form></contact-form>
    <!-- <testimonial-carousel-component></testimonial-carousel-component> -->
  </div>
</template>

<script>
import ContactForm from '@/components/ContactForm.vue'
import TestimonialCarouselComponent from '../components/TestimonialCarouselComponent.vue';
import HomePictureComponent from '../components/HomePictureComponent.vue';

export default {
  components: {
    ContactForm,
    TestimonialCarouselComponent,
    HomePictureComponent
  }
};
</script>
