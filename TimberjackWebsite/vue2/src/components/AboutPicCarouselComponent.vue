<template>
     <h1 class="text">Timberjack tree service is a local family owned tree care provider in the greater Pittsburgh area.
         Our goal is to provide our customers and their trees with the best care possible by keeping up to date with the
          latest industry standards and practices.</h1>
    <vueper-slides class="small-carousel no-shadow" fixed-height="550px" :autoplay="true" :interval="2000">
      <vueper-slide v-for="(slide, i) in slides" :key="i" :image="slide.image" class="image">
        <!-- <img :src="slide.image" alt="Slide Image" class="image"> -->
      </vueper-slide>
    </vueper-slides>
  </template>
  
  <script>
  import { VueperSlides, VueperSlide } from 'vueperslides'
  import 'vueperslides/dist/vueperslides.css'
  
  export default {
    components: { VueperSlides, VueperSlide },
    data() {
      return {
        slides: [
          {
           image: 'img/20.png',
          },
          {
           image: '/img/1.1.jpg',
          },
          {
           image: '/img/2.3.jpg',
          },
          {
           image: '/img/4.jpg',
          },
          {
           image: '/img/5.jpg',
          },
          {
           image: '/img/6.jpg',
          },
          {
           image: '/img/7.jpg',
          },
          {
           image: '/img/8.jpg',
          },
          {
           image: '/img/10.jpeg',
          },
          {
           image: '/img/11.jpeg',
          },
          {
           image: '/img/12.jpg',
          },
          {
           image: '/img/13.jpg',
          },
          {
           image: '/img/14.jpeg',
          },
          {
           image: '/img/15.jpeg',
          },
          {
           image: '/img/18.jpeg',
          },
          {
           image: '/img/19.jpeg',
          },
        ],
      };
    },
  };
  </script>
  
  <style scoped>

  .carousel-container {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .small-carousel {
    width: 40%;
    margin: auto;
  }
  .image-slide {
    height: 550px;
    display: flex;
  justify-content: center;
  align-items: center;
}
  .image {
    max-width: 100%;
    max-height: 100%;
  }
  .text{
    width: 70%; 
  margin: 0 auto; 
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  font-size: 24px;
  margin-top: 3%;
  margin-bottom: 3%;
  }
  </style>
  