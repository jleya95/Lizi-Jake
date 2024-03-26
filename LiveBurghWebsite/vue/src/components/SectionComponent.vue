<template>
    <section :id="id" class="section" :style="{ backgroundPositionY: bgPosition }">
      <slot></slot>
    </section>
  </template>
  
  <script>
  import { ref, onMounted, onBeforeUnmount } from 'vue';
  
  export default {
    props: {
      id: String,
      bgPosition: String,
    },
    setup(props) {
      const bgPosition = ref('50%');
  
      const handleScroll = () => {
        const scrollTop = props.id ? document.getElementById(props.id).scrollTop : 0;
        bgPosition.value = `${50 - scrollTop * 0.1}%`;
      };
  
      onMounted(() => {
        window.addEventListener("scroll", handleScroll);
      });
  
      onBeforeUnmount(() => {
        window.removeEventListener("scroll", handleScroll);
      });
  
    //   return {
    //     bgPosition,
    //   };
    },
  };
  </script>
  
  <style scoped>
  .section {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 2em;
    background-attachment: fixed;
    background-size: cover;
    color: white;
  }
  </style>