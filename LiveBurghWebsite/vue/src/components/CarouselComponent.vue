<template>
    <Carousel :autoplay="2000" :wrap-around="true" pause-autoplay-on-hover>
      <Slide v-for="(image, index) in images" :key="index">
        <div class="carousel__item">
          <img :src="image.src" :alt="image.alt">
        </div>
      </Slide>
  
      <template #addons>
        <Navigation />
        <Pagination />
      </template>
    </Carousel>
  </template>
  
  <script>
  import { defineComponent } from 'vue'
  import { Carousel, Navigation, Pagination, Slide } from 'vue3-carousel'
  
  import 'vue3-carousel/dist/carousel.css'
  
  // Import your images
  import image1 from '../img/picture1.jpg'
  import image2 from '../img/picture2.jpg'
  import image3 from '../img/picture3.jpg'
  import image4 from '../img/picture4.jpg'
  
  

  
  export default defineComponent({
    name: 'Basic',
    components: {
      Carousel,
      Slide,
      Pagination,
      Navigation,
    },
    data() {
      return {
        images: [
          { src: image1, alt: 'Image 1' },
          { src: image2, alt: 'Image 2' },
          { src: image3, alt: 'Image 3' },
          { src: image4, alt: 'Image 4' },
          // Add more images as needed
        ]
      };
    },
  })
  </script>
  
  <style scoped>
  .carousel__item {
    min-height: 500px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .carousel__item img {
   width: 40%;
  }
  
  .carousel__slide {
    padding: 10px;
  }
  
  .carousel__prev,
  .carousel__next {
    box-sizing: content-box;
    border: 5px solid white;
  }

 
  </style>
  