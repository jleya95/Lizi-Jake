<template>
       <div class="container">
        <div class="box">

            <div class="image-section">
                <img class="dragon-image" :src="this.imgPath" v-if="imgPath != ''">
            </div>
            <div class="content">
                <div class="name">
                    <h1>{{ dragonProp.name }}</h1>
                </div>
                <div class="stats">
                    <dragon-stats-component :dragonProp="dragonProp"></dragon-stats-component>
                </div>
                <div class="description">
                    <text-component :dragonDescription="dragonProp.description"></text-component>
                </div>
            </div>
            
        </div>
    </div>
    <!-- <div class="container">
        <div class="box">

            <div class="image-section">
                <img class="dragon-image" :src="this.imgPath" v-if="imgPath != ''">
            </div>
            <div class="content">
                <div class="name">
                    <h1>{{ dragonProp.name }}</h1>
                </div>
                <div class="stats">
                    <dragon-stats-component :dragonProp="dragonProp"></dragon-stats-component>
                </div>
                <div class="description">
                    <text-component :dragonDescription="dragonProp.description"></text-component>
                </div>
            </div>
            
        </div>
    </div> -->
</template>

<script>
import textComponent from '@/components/textComponent.vue';
import DragonStatsComponent from '@/components/DragonStatsComponent.vue';
import DragonService from '../services/DragonService';


export default {
    components: {
        textComponent,
        DragonStatsComponent,
    },
    props: {
        dragonProp: {
            type: []
        },
        imgPath: {
            type: String
        }
    }
}
</script>

<style>

.container {
    display: flex;
    justify-content: center;
}

.box {
    width: 80%;
    display: flex;
    flex-direction: row;
    /* max-height: 550px; */
}

.image-section {
    margin-right: 10%;
    height: 450px; 
    display: flex;
    align-items: center; 

}

.content {
    flex: 1; 
    display: flex;
    flex-direction: column;
    justify-content: space-between; 
    height: 450px;
}

.description {
    overflow-y: auto; 
}

.dragon-image {
    width: auto; 
    height: 100%; 
    max-width: 100%; 
    max-height: 100%;
    box-shadow: 20px 20px 50px rgba(137, 137, 137, 0.684);
}
.name {
    display: flex;
    justify-content: flex-end;
}

@media screen and (max-width: 900px) {
    .box {
        flex-direction: column;
        height: auto;
    }

    .image-section {
        width: 100%; 
        height: 250px; 
        justify-content: center;
        margin-bottom: 8%;
    }
    .description {
    margin-top: 5%; 
    justify-content: center;
}
.content{
    display: flex;
    justify-content: center;
}
.stats{
    display: flex;
    justify-content: center;
}
.name{
    display: flex;
    justify-content: center;
}
}

/* .container {
    display: flex;
    justify-content: center;
}

.dragon-image {
    height: 500px; */
    /* width: 250px; */
    /* box-shadow: 20px 20px 50px rgba(137, 137, 137, 0.684);
} */

/* .image-section { */
    /* height: fit-content; */
    /* margin-left: 10%;
} */

/* .box {
    width: 80%;
    display: flex;
    flex-direction: row;
}

.name {
    display: flex;
    justify-content: right;
}


.content {
    display: flex;
    flex-direction: column;
    height: 500px;
}
.description{
    height: 550px; 
} */
</style>