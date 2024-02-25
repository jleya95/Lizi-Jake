<template>
    <div class="container">
        <div class="box">
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
import DragonStatsComponent from '@/components/DragonStatsComponent.vue'

export default {
    components: {
        textComponent,
        DragonStatsComponent
    },
    props: {
        dragonProp: {
            type: []
        }
    },
}
</script>

<style>

.container {
    display: flex;
    justify-content: center;
}

/* .box {
    width: 80%;
    display: flex;
    align-items: left;
    justify-content: right;
    background-color: rgba(255, 255, 255, 0.873);
    border-radius: 2%;

} */

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
/* .content {
    display: flex;
    align-items: top;
    height: 500px;
} */
</style>