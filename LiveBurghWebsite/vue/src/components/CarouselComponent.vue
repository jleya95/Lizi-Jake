<template>
    <vueper-slides fade :touchable="false">
      <vueper-slide
        v-for="(slide, i) in slides"
        :key="i"
        :image="slide.image"
        :title="slide.title"
        :content="slide.content" />
    </vueper-slides>
  </template>
  
  <script>
  import { VueperSlides, VueperSlide } from 'vueperslides';
  import 'vueperslides/dist/vueperslides.css';
  
  export default {
    components: { VueperSlides, VueperSlide },
    
    data() {
      return {
        slides: [
          {
            title: 'El Teide Volcano, Spain',
            content: 'Photo by Max Rive',
            // Provide the URL directly as a string
            image: 'https://example.com/path/to/el-teide-volcano-spain.jpg'
          },
          // Other slides...
        ]
      };
    }
  };
  </script>
  