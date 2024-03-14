<template>
  <div class="container2">
    <div class="box2">
      <div class="content2" @click="readDescriptionAloud">
        {{ dragonDescription }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    dragonName: {
      type: String,
    },
    dragonDescription: {
      type: String
    }
  },
  methods: {
    readDescriptionAloud() {
      if ('speechSynthesis' in window) {
        var synthesis = window.speechSynthesis;
        var utterance = new SpeechSynthesisUtterance(this.dragonDescription);
        synthesis.speak(utterance);
      } else {
        alert('Sorry, your browser does not support text-to-speech.');
      }
    },
  },
}
</script>

<style>
/* .container2 {
  display: flex;
  align-items: right;
  justify-content: right;
  position: fixed;
  bottom: 10%;
  right: 20%;
  display: flex;
  align-items: flex-end;
  justify-content: flex-end;
} */

.container2 {
  display: flex;
  align-items: right;
  justify-content: right;
  bottom: 10%;
  right: 20%;
}

.box2 {
  width: 450px;
  height: 250px;
  display: flex;
  justify-content: flex-end;
  background-color: rgb(255, 255, 255);
  border-radius: 2%;
  box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
  border-style: double;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  overflow-y: auto; 
}

.content2 {
  padding: 3%;
}

@media screen and (max-width: 900px) {
  .box2 {
  width: 450px;
  height: auto;
  display: flex;
  justify-content: center;
  background-color: rgb(255, 255, 255);
  border-radius: 2%;
  box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
  border-style: double;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  overflow-y: auto; 
}
.container2 {
  display: flex;
  align-items: center;
  justify-content: center;
  bottom: 10%;
  right: 20%;
}
  
}

/* .content2 {
  height: 250px;
  align-items: center;
  justify-content: center;
} */

/* @media screen and (max-width: 900px) {
  .box2 {
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: rgb(255, 255, 255);
    border-radius: 2%;
    box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
    border-style: double;

  }

  .content2 {
    height: 250px;
  } */

  /* .container2 { */
    /* display: flex;
    align-items: right;
    justify-content: right; */
    /* position: fixed; */
    /* top: 40%;
    left: 20%; */
    /* right: 50%; */
    /* display: flex;
    align-items: flex-start;
    justify-content: flex-start;
  } */
/* } */


</style>