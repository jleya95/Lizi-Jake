<template>
  <!-- <h1 class="text">Timberjack tree service is a local family owned tree care provider in the greater Pittsburgh area.
    Our goal is to provide our customers and their trees with the best care possible by keeping up to date with the
    latest industry standards and practices.</h1> -->
  <div class="about-text">
    <h2 class="about-h2">WHO WE ARE</h2>
    <p>TimberJack Tree Service is a Pennsylvania based, family owned & operated tree service providing quality services to
      residential and commercial customers in the Greater Pittsburgh Area, our mission is to provide our customers with
      the best service possible at a competitive but/yet affordable price. From the initial inquiry to the completion of
      your tree care needs, we will prove to you that customer satisfaction is our number one priority.</p>
  </div>
  <vueper-slides class="small-carousel no-shadow" fixed-height="550px" :autoplay="true" :interval="2000" :bullets="false">
    
    <vueper-slide v-for="(slide, i) in slides" :key="i" :image="slide.image" class="image">
      <img :src="slide.image" alt="Slide Image" class="image">
    </vueper-slide>
  </vueper-slides>
  <div class="about-text">
    <h2 class="about-h2">WHY CHOOSE TIMBERJACK TREE SERVICE?</h2>
    <P>As much as we would like to say that what we do everyday is easy, it is not. There are many factors involved when
      pruning or taking down a tree down properly in sometimes tight areas with lots of obstacles near and below. It is a
      lot like building a puzzle at times and if you do not have every piece of the puzzle in place, then it is just
      simply not going to work. When Choosing TimberJack Tree Service you are choosing a team of professionals with over
      25 years of combined industry experience. We strive to get the job done as safely, quickly, and efficiently as
      possible. Each of our employees possess their own specific set of skills that helps us tackle the toughest of jobs.
      From skilled climbers, to bucket truck, crane, and machine operators, we have the team to get your job done safely
      and affordably.</P>
  </div>
</template>
  
<script>
import { VueperSlides, VueperSlide } from 'vueperslides'
import 'vueperslides/dist/vueperslides.css'
import Picture20 from '../../img/20.png'
// import Picture1 from '../../img/1.1.jpg'
// import Pic23 from '../../img/2.3.jpg'
import Pic4 from '../../img/4.jpg'
import Pic5 from '../../img/5.jpg'
import Pic6 from '../../img/6.jpg'
import Pic7 from '../../img/7.jpg'
import Pic8 from '../../img/8.jpg'
// import Pic10 from '../../img/10.jpeg'
// import Pic11 from '../../img/11.jpeg'
import Pic12 from '../../img/12.jpg'
import Pic13 from '../../img/13.jpg'
import Pic14 from '../../img/14.jpeg'
import Pic15 from '../../img/15.jpeg'
import Pic18 from '../../img/18.jpeg'
import Pic19 from '../../img/19.jpeg'

export default {
  components: { VueperSlides, VueperSlide },
  data() {
    return {
      
      slides: [
        {
          image: Picture20,
        },
        // {
        //   image: Picture1
        // },
        // {
        //   image: Pic23,
        // },
        {
          image: Pic4,
        },
        {
          image: Pic5,
        },
        {
          image: Pic6,
        },
        {
          image: Pic7,
        },
        {
          image: Pic8,
        },
        // {
        //   image: Pic10,
        // },
        // {
        //   image: Pic11,
        // },
        {
          image: Pic12,
        },
        {
          image: Pic13,
        },
        {
          image: Pic14,
        },
        {
          image: Pic15,
        },
        {
          image: Pic18,
        },
        {
          image: Pic19,
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
  /* height: 80%; */
  display: flex;
  justify-content: center;
  align-items: center;
}

.image {
  max-width: 100%;
  max-height: 100%;
}

.about-text {
  width: 70%;
  margin: auto;
  /* display: flex;
  align-items: center;
  justify-content: center; */
  text-align: center;
  /* font-size: 24px; */
  font-size: 100%;
  margin-top: 3%;
  margin-bottom: 3%;
}

.about-h2 {
  font-size: 150%;
  font-weight: bold;
  color: rgb(20, 91, 30);
}

@media screen and (max-width: 800px) {
  /* .carousel-container {
    height: 50%;
  }
 */
  .small-carousel {
    width: 80%;
    /* height: 100%; */
    /* height: auto;
    margin: auto; */
    margin-bottom: -40%;
  }

  /* .image-slide {
    height: 50%;
  } */
  .image {
    /* max-width: auto;
    max-height: auto; */
    height: 70%;
  }


}
</style>
  