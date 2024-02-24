<template>
    <nav class="level ">
        <!-- Left side -->
        <div class="level-left">
            <div class="level-item">
            </div>
            <div class="level-item">
                <div class="field has-addons">
                    <p class="control">
                        <input class="input" type="text" placeholder="Find a dragon by its name or number"
                            style="width: 500px;"  v-model="Search">
                    </p>
                    <p class="control">
                        <button class="button" @click="sendSearch()">
                            Search
                        </button>
                    </p>
                </div>
            </div>
        </div>
    </nav>
    <ul v-if="showDragons">
            <li v-for="(dragon, index) in filteredDragons" :key="index" @click="selectDragon(index)"
                :class="{ active: index === activeIndex }">
                {{ dragon }}
            </li>
        </ul>
    <!-- <div>
        <input v-model="Search" @input="sendSearch" @keydown.down="onArrowDown" @keydown.up="onArrowUp"
            @keydown.enter="onEnter" />
        <ul v-if="showDragons">
            <li v-for="(dragon, index) in filteredDragons" :key="index" @click="selectDragon(index)"
                :class="{ active: index === activeIndex }">
                {{ dragon }}
            </li>
        </ul>
    </div> -->
</template>

<script>
import SearchService from '../services/SearchService';

export default {
    data() {
    return {
      Search: "",       
      Dragons: [],       
      showDragons: false,
      activeIndex: -1,
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
      this.Search = this.filteredDragons[index];
      this.showDragons = false;
    },
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
}

/* #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  color: #2c3e50;
}

input {
  padding: 10px;
  font-size: 16px;
} */
</style>