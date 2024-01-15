<template>
  <h1 class="review">Testimonials<a class="Google"
      href="https://www.google.com/localservices/prolist?g2lbs=AIQllVx5qbEF2m25QqE9VCoMTxdwch2e_ntyfBrIPkglJjZvzv_h8v7m7pbu2tw8DdemzM2tmWHRasGQbbNZCh61CMCAuWxj6-dEYo1ssdeOI2TLFxeUN1tUYQqmjo8P74YZuBuxXi6B&hl=en-US&gl=us&cs=1&ssta=1&q=timberjack%20tree%20service%20pa%20reviews&oq=timberjack%20tree%20service%20pa%20reviews&slp=MgA6HENoTUl1dXlGbjlqZGd3TVYyMDFIQVIzSVd3UFpSAggCYAB6pwJDaUowYVcxaVpYSnFZV05ySUhSeVpXVWdjMlZ5ZG1salpTQndZU0J5WlhacFpYZHpJZ0k0QVVpYXFiWEo4cmVBZ0FoYUtoQUFFQUVRQWhnQUdBRVlBaGdESWhwMGFXMWlaWEpxWVdOcklIUnlaV1VnYzJWeWRtbGpaU0J3WVpJQkRIUnlaV1ZmYzJWeWRtbGpaYW9CYWdvSUwyMHZNRFYwWW00UUFTb2JJaGQwYVcxaVpYSnFZV05ySUhSeVpXVWdjMlZ5ZG1salpTZ0FNaDhRQVNJYk5nX0VlRUdjY2dLTjRzWDQ1dm5ETmNybWdjUWsxMTJTQ3l5ak1oNFFBaUlhZEdsdFltVnlhbUZqYXlCMGNtVmxJSE5sY25acFkyVWdjR0hnQVFBkgEqCg0vZy8xMXJ4bmx2cDR2Cg0vZy8xMWxyZjJqbGQzEgQSAggBEgQKAggB&src=2&spp=Cg0vZy8xMXJ4bmx2cDR2OuQBV2lvUUFCQUJFQUlZQUJnQkdBSVlBeUlhZEdsdFltVnlhbUZqYXlCMGNtVmxJSE5sY25acFkyVWdjR0dTQVF4MGNtVmxYM05sY25acFkyV2FBUUNxQVdvS0NDOXRMekExZEdKdUVBRXFHeUlYZEdsdFltVnlhbUZqYXlCMGNtVmxJSE5sY25acFkyVW9BRElmRUFFaUd6WVB4SGhCbkhJQ2plTEYtT2I1d3pYSzVvSEVKTmRka2dzc296SWVFQUlpR25ScGJXSmxjbXBoWTJzZ2RISmxaU0J6WlhKMmFXTmxJSEJo&serdesk=1&lrlstt=1705263148684&ved=2ahUKEwjcmf6e2N2DAxUQkYkEHRHaD5YQvS56BAgdEAE&scp=ChFnY2lkOnRyZWVfc2VydmljZRI6EhIJieUyHiaALYgRPbQiUEchRsIiDFBlbm5zeWx2YW5pYSoUDabCrBcVa6UB0B2aJVcZJQdHe9MwABoXdGltYmVyamFjayB0cmVlIHNlcnZpY2UiInRpbWJlcmphY2sgdHJlZSBzZXJ2aWNlIHBhIHJldmlld3MqDFRyZWUgc2VydmljZQ%3D%3D#ts=3">
      (More on Google):</a></h1>
  <vueper-slides class="small-carousel no-shadow" fixed-height="150px" :autoplay="true" :interval="5000">
    <vueper-slide v-for="(slide, i) in slides" :key="i" :title="slide.title" :content="slide.content">
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
          title: '⭐⭐⭐⭐⭐',
          content: `Grant and his team were responsive and professional.
                    I had a tree emergency. It was a difficult job, 
                    and they made me feel comfortable and taken care of during a stressful time. 
                    They know what they are doing! I would highly recommend. -C.D.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `We hired TimberJack Tree 🌳 Service to remove a silver maple tree, 
                    and it’s stump, which was located between our house and our neighbor’s home. 
                    Grant and his crew are highly skilled professionals who approached every step
                    of this process strategically. We would recommend TimberJack Tree 🌲 
                    Service to anyone looking for the best tree service available, hands down. 
                    They arrived on time, worked diligently, cleaned up the site, and completed the 
                    project efficiently and as scheduled. 🌳🪚 -B.S.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `Grant and his crew did an outstanding job removing a large silver maple from my back yard today. 
          They were efficient, safe, and professional. 
          I was impressed with how much work and attention they put into cleaning up
           - I’m sure my yard is cleaner now than it was before they arrived. 
           I would highly recommend this company to anyone needing tree service -
            they do free estimates and Grant is excellent at communication and scheduling. -D.S.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `This company performed excellent from start through finish when removing some tricky trees 
          that were leaning on my hillside. Very professional and responsive and arrived on time. Clean up was 
          to perfection too! Would definitely use TimberJack Tree Service in the future. Highly recommend for any of your tree needs.- D.J.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `TimberJack Tree Service is the real deal. I gathered a bunch of estimates from other services (for tree removal) 
          and Grant was by far the most professional and reasonably priced of all of them. From the initial quote to the job 
          completion everything went smooth and Grant and his team exceeded my expectations! They showed up on time, were meticulous, 
          overdelivered (took down an extra bothersome tree at no additional fee) and were professional the entire time. Really impressed! -S.S.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `Everyone was very professional, on time, and made a very difficult job look easy. 
          They really know their stuff. They work well as a team. They also did did a great job with cleaning everything up.
           I would highly recommend TimberJack Tree Service! -J.W.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `The best of the best when it comes to tree removal in the burgh. Grant and his team have been my tree guys 
          and will continue to be because of their expertise and ability to get a lot of work done quick. I highly recommend 
          them to anyone in need of tree removal or work! -A.R.`,
        },
        {
          title: '⭐⭐⭐⭐⭐',
          content: `I ordered firewood from Timberjack Tree Service. They were great! They delivered exactly on time, pleasant and helpful.
          I would definitely recommend them. -R.E.`,
        },
      ],
    };
  },
};
</script>

<style scoped>
.review {
  display: flex;
  justify-content: center;
  align-items: center;
  color: rgb(74, 74, 74);
  font-size: 24px;
}

.Google {
  color: orange;
  display: flex;
}

.carousel-container {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.small-carousel {
  width: 60%;
  margin: auto;
}
</style>