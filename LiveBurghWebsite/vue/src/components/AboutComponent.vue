<template>
<div>
    <div id="About" class="section">
        <h2>About</h2>
    </div>
    
    <div class="join-us">
        <div class="flex-container-services">
            <img src="../img/joinus.jpg" class="description-img">
            <div class="description-text">
                <h2 class="service-header">Come Join Us!</h2>
                <p>Liveburgh is a Music House to rehearse, record, perform,  
            network & crash while on tour. We have intimate house shows as well as
             performers have access to 3 Bedrooms, 2 Baths, fully equipped kitchen,
              basement bar/gameroom, large back porch, yard, bikes, basketball, etc.
                Within 1 mile of Hartwood Acres Park with music amphitheater as well
                 as hiking/biking/walking trails.  
Come check it out - You're going to have a great time!</p>
            </div>
        </div>
    </div>
    <!-- <div class="description">
        <p>Liveburgh is a Music House to rehearse, record, perform,  
            network & crash while on tour. We have intimate house shows as well as
             performers have access to 3 Bedrooms, 2 Baths, fully equipped kitchen,
              basement bar/gameroom, large back porch, yard, bikes, basketball, etc.
                Within 1 mile of Hartwood Acres Park with music amphitheater as well
                 as hiking/biking/walking trails.  
Come check it out - You're going to have a great time!
 </p>
    </div> -->
    <carousel-component></carousel-component>
</div>
</template>

<script>
import CarouselComponent from './CarouselComponent.vue';

export default{
    components: {
        CarouselComponent,
    }
}
</script>

<style>
.description-text{
    font-size: 70%;
    margin: 5%;
}
.flex-container-services {
    margin-left: 5%;
    margin-right: 5%;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
}
.description-img{
width: 35%;
}
.service-header{
    font-size: 140%;
    margin-bottom: 4%;

}
</style>

