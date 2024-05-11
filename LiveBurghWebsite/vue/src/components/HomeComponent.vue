<template>
   <div id="Home" class="section">
      <div class="content">
         <h1 id="liveburgh">LIVEBURGH STUDIO</h1>
         <i id="Arrow" class="fas fa-chevron-down fa-2x" @click="scrollToSection('Events')"></i>
      </div>
   </div>
</template>

<script>
export default {
   methods: {
      scrollToSection(sectionId) {
         const section = document.getElementById(sectionId);
         if (section) {
            section.scrollIntoView({ behavior: 'smooth' });
         }
      }
   }
}

</script>

<style>
.section {
   display: flex;
   justify-content: center;
   align-items: center;
   height: 85vh;

}

.content {
   display: flex;
   flex-direction: column;
   align-items: center;


}

#liveburgh {
   font-size: 200%;
   color: white;
   font-weight: 700;
   height: 5vh;

}

#Arrow {
   color: white;
   position: absolute;
   bottom: 0;
}

#Arrow:hover {
   color: gray;
}

@media screen and (max-width: 900px) {
   .section {
      display: flex;
      justify-content: center;
      align-items: center;
   }

   .content {
      display: flex;
      flex-direction: column;
      align-items: center;

   }

   #liveburgh {
      font-size: 180%;
      color: white;
      font-weight: 700;
      height: 10vh;
      text-align: center;
   }

   #Arrow {
      color: white;
      position: absolute;
      bottom: 0;
   }
}
</style>