<template>
<div class="container">
        <div class="box">

            <div class="image-section">
                <div class="dragon-image" v-html="dragonImgHTML"></div>
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
import textComponent from '../components/textComponent.vue';
import DragonStatsComponent from '../components/DragonStatsComponent.vue';
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
            type: String,
            required: true,

        }
    },
    computed: {

        dragonImgHTML() {
            if (this.imgPath) {
                return `<div class="dragon-image">${this.imgPath}</div>`;
            } else {
                return '';
            }
        }
    }
}
</script>

<style>
img {
    height: 450px;
    max-width: 100%;
}

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
    height: 250px;
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
    max-height: 100%;
    box-shadow: 20px 20px 50px rgba(137, 137, 137, 0.684);
}

.name {
    display: flex;
    justify-content: flex-end;
}

.message {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}

@media screen and (max-width: 900px) {

    img {
        height: 450px;
        max-width: 100%;
    }

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

    .content {
        display: flex;
        justify-content: center;
    }

    .stats {
        display: flex;
        justify-content: center;
    }

    .name {
        display: flex;
        justify-content: center;
        margin-top: 35%;
    }
}
</style>