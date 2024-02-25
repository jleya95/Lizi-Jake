<template>
    <div class="container">
    <div class="box">
        <div class="content">
            <text-component></text-component>
         </div>
</div>
</div>
</template>

<script>
import textComponent from './textComponent.vue';

export default {
    components: {
        textComponent,
    },
//     props: {
//     dragonName: String, 
//   },
}
</script>

<style>
.container{
    display: flex;
    align-items: center;
    justify-content: center;
}
.box{
    width: 80%;
    display: flex;
    align-items: left;
    justify-content: right;
    background-color: rgba(255, 255, 255, 0.873);
    border-radius: 2%;
    
}
.content{
    height: 500px;
}
</style>