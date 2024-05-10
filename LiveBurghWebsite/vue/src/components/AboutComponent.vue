<template>
    <div>
        <h1 class="aboutLB">ABOUT LIVEBURGH</h1>
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


        <div class="join-us">
            <div class="flex-container-services">
                <div class="description-text">
                    <h2 class="service-header">Booking an Event?</h2>
                    <p>We take pride in providing the best event production in our area.
                        We ensure that your event will be stress-free and well organized.
                        So sit back, relax, and leave things to us! </p>
                </div>
                <img src="../img/booking.jpg" class="description-img">
            </div>
        </div>

        <div class="flex-container-services" id="always">
            <img src="../img/goingon.jpg" class="description-img">
            <div class="description-text">
                <h2 class="service-header">Always Something Going On</h2>
                <p>When we're not hosting a private event, we are throwing our own parties!
                    Come out to Liveburgh to find out for yourselves. </p>
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

export default {
    components: {
        CarouselComponent,
    }
}
</script>

<style>
#always {
    margin-bottom: 15%;
}

.description-text {
    font-size: 70%;
    margin: 5%;
}

.flex-container-services {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 5%;
}

.description-img {
    width: 35%;
}

.service-header {
    font-size: 140%;
    margin-bottom: 4%;
    background: -webkit-linear-gradient(#d868e9, #810db8);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    text-shadow: rgb(104, 179, 219) 1px 0 10px;

}

.aboutLB {
    text-align: center;
    font-size: 130%;
}
</style>
