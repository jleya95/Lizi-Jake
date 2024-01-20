<template>
    <div class="about">
        <h1>About Us</h1>
        <about-pic-carousel-component></about-pic-carousel-component>
    </div>
</template>

<script>
import AboutPicCarouselComponent from '../components/AboutPicCarouselComponent.vue';

export default {
    components: {
        AboutPicCarouselComponent,
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
</style>
