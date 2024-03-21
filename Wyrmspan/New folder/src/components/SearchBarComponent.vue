<template>
  <nav class="level ">
    <div class="level-left">
      <div class="level-item">
      </div>
      <div class="level-item">
        <div class="field has-addons">
          <p class="control">
            <input class="input" type="text" placeholder="Find a dragon by its name" style="width: 500px;"
              v-model="Search" @input="sendSearch()">
          </p>
          <p class="control">
            <button class="button" @click="sendSearch">
              Search
            </button>
          </p>
        </div>
      </div>

    </div>
  </nav>
  <ul class="listDragons" v-if="showDragons">
    <li v-for="(dragon, index) in Dragons" :key="index"
      :class="{ active: index === activeIndex }">
      <a @click="showDragonInfo(dragon)">{{ dragon.name }}</a>
    </li>
  </ul>
 
    <BoxBackgroundComponent :dragonProp="DisplayDragon" :imgPath="imgPath"/>


    
    
</template>

<script>
import SearchService from '../services/SearchService';
import DragonService from '../services/DragonService.js';
import BoxBackgroundComponent from './BoxBackgroundComponent.vue';


export default {

  components: {
    BoxBackgroundComponent,
  },
  data() {
    return {
      Search: "",
      Dragons: [],
      showDragons: false,
      activeIndex: -1,
      showInfo: false,
      DisplayDragon: [],
      imgPath: ""
    };
  },
  methods: {
    sendSearch() {
      SearchService.searchDragon(this.Search)
        .then(response => this.Dragons = response.data)
        .catch(error => console.error(error));

      this.showDragons = true;
      this.activeIndex = -1;
    },
    onArrowDown() {
      if (this.activeIndex < this.filteredDragons.length - 1) {
        this.activeIndex++;
      }
    },
    onArrowUp() {
      if (this.activeIndex > 0) {
        this.activeIndex--;
      }
    },
    onEnter() {
      if (this.activeIndex !== -1) {
        this.Search = this.filteredDragons[this.activeIndex];
        this.showDragons = false;
      }
    },
    selectDragon(index) {
      this.Search = this.Dragons[index];

    },
    showDragonInfo(dragon) {
      DragonService.getDragonByName(dragon.name)
        .then(response => {
          if (response.status === 200) {
            this.DisplayDragon = response.data;
            this.getDragonImgPath(dragon.dragon_number);
            this.showInfo = true;
            this.Search = "";
            this.showDragons = false;
          }
        })
    },
    getDragonImgPath(dragon_number) {
      DragonService.getDragonImgPath(dragon_number)
      .then(response => {
        if (response.status === 200) {
          this.imgPath = response.data;
        }
      })
    }
  },
  computed: {
    filteredDragons() {
      return this.Dragons.filter(
        (dragon) =>
          dragon.toLowerCase().indexOf(this.Search.toLowerCase()) !== -1
      );
    },
  },
}
</script>


<style>
.level {
  display: flex;
  align-items: center;
  justify-content: center;
  padding-top: 5%;
  position: relative;

}
.level-item{
  box-shadow: 10px 10px 10px rgb(180, 180, 180);
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
}

input {
  padding: 10px;
  font-size: 16px;
}

.listDragons{
  background-color: rgb(255, 255, 255);
  width: 32%;
  position: absolute; 
  top: 17%; 
  margin-left: 31.5%; 
  z-index: 1;
  box-shadow: 10px 10px 50px rgb(222, 222, 222);
}


@media screen and (max-width: 900px) {
.level {
  display: flex;
  align-items: center;
  justify-content: center;
  padding-top: 5%;
  position: relative;

}
.level-item{
  box-shadow: 10px 10px 10px rgb(180, 180, 180);
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
}

input {
  padding: 10px;
  font-size: 16px;
}

.listDragons{
  background-color: rgb(255, 255, 255);
  width: 60%;
  position: absolute; 
  top: 9%; 
  margin-left: 10%; 
  z-index: 1;
  box-shadow: 10px 10px 50px rgb(222, 222, 222);
}
.level-item .field .control input {
    width: 250px !important;
    padding: 10px !important;
    font-size: 14px !important;
    height: 40px !important;
  }
}
</style>