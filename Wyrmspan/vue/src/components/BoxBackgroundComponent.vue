<template>
    <div class="container">
        <div class="box">
            <picture-component></picture-component>
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
</template>

<script>
import textComponent from '@/components/textComponent.vue';
import DragonStatsComponent from '@/components/DragonStatsComponent.vue';
import DragonService from '../services/DragonService';
import PictureComponent from '@/components/PictureComponent.vue'

export default {
    components: {
        textComponent,
        DragonStatsComponent,
        PictureComponent
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

.dragon-image {
    height: 500px;
    width: 800px;
    box-shadow: 20px 20px 50px rgba(137, 137, 137, 0.684);
}

.image-section {
    height: fit-content;
    margin-left: 10%;
}

.box {
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
</style>