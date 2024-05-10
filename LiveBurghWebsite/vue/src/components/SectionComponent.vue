<template>

  <section :id="id" class="section"
    :style="{ backgroundPositionY: bgPosition, backgroundColor: sectionColor, height: sectionHeight }">
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
    const sectionColor = ref('rgba(33, 9, 49, 1)');

    // const handleResize = () => {
    //   const section = props.id ? document.getElementById(props.id) : null;
    //   if (section) {
    //     sectionHeight.value = `${section.scrollHeight}px`;
    //   }
    // };

    // onMounted(() => {
    //   handleResize();
    //   window.addEventListener("resize", handleResize);
    // });

    // onBeforeUnmount(() => {
    //   window.removeEventListener("resize", handleResize);
    // });

    return {
      sectionHeight,
      sectionColor,

    };
  },
};
</script>

<style scoped>
.section {
  position: relative;
  display: flex;
  /* justify-content: center;
    align-items: center; */
  font-size: 2em;
  color: rgb(188, 188, 188);
  transition: height 0.3s;
  margin-left: 10%;
  margin-right: 10%;

}

@media screen and (max-width: 900px) {
  .section {
  /* font-size: 2em; */
  color: rgb(188, 188, 188);
  transition: height 0.3s;
  margin-left: 2%;
  margin-right: 2%;

}

}

</style>