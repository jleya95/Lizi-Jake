<!-- <template>
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
      const bgPosition = ref('100%');
  
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
  </style> -->

  <template>
    <section :id="id" class="section" :style="{ backgroundPositionY: bgPosition, height: sectionHeight }">
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
      const sectionHeight = ref('auto'); 
  
      const handleResize = () => {
        const section = props.id ? document.getElementById(props.id) : null;
        if (section) {
          sectionHeight.value = `${section.scrollHeight}px`;
        }
      };
  
      onMounted(() => {
        handleResize(); 
        window.addEventListener("resize", handleResize);
      });
  
      onBeforeUnmount(() => {
        window.removeEventListener("resize", handleResize);
      });
  
      return {
        sectionHeight,
      };
    },
  };
  </script>
  
  <style scoped>
  .section {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 2em;
    background-attachment: fixed;
    background-size: cover;
    color: white;
    transition: height 0.3s;
  }
  </style>
  