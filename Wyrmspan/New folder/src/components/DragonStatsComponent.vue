<template>
    <div v-if="dragonProp" class="stats-line">
        <div class="line">
            <p class="dragon-stat"><span class="stat">HABITAT:</span> {{ dragonProp.habitat }}  </p>
            <p class="dragon-stat"><span class="stat">SIZE:</span> {{ dragonProp.size }}</p>
        </div>
        <div class="line">
            <p class="dragon-stat"><span class="stat">COST:</span> {{ dragonProp.cost }}  </p>
            <p class="dragon-stat" v-if="dragonProp.nest != ''"><span class="stat">NEST:</span> {{ dragonProp.nest }} 
            </p>
            <p class="dragon-stat"><span class="stat">TRAIT:</span> {{ dragonProp.trait }}</p>
        </div>
    </div>
</template>

<script>
export default {
    props: {
        dragonProp: {
            type: []
        }
    }
}
</script>

<style>
.line {
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
}

.stats-line {
    display: flex;
    flex-direction: column;
    margin-top: 2%;
}


.stat {
    font-weight: bold;
}

.dragon-stat {
    padding-right: 2px;
}

@media screen and (max-width: 900px) {
   .line{
    display: flex;
    flex-direction: column;
    flex-direction: flex-end;
   }
}
</style>