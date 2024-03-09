<template>
    <div class="container3">
        <!-- <div class="box3">
            <img class="dragon-image" :src="this.imgPath" v-if="imgPath != ''">
        </div> -->
    </div>
</template>

<script>
import DragonService from '../services/DragonService';

export default {

    props: {
        imgPath: {
            type: String
        }
    }
}

</script>

<style>
.container3 {
  width: 400px;
  display: flex;
  justify-content: flex-start;
  background-color: rgb(181, 37, 37);
  border-radius: 2%;
  box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
  border-style: double;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
}
</style>