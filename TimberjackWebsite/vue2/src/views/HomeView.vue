<template>
  <div class="home">
    <home-picture-component></home-picture-component>
    <testimonial-carousel-component></testimonial-carousel-component>
    <contact-form></contact-form>
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
