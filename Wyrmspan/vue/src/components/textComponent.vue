<template>
       <div class="container2">
    <div class="box2">
        <div class="content2"  @click="readDescriptionAloud">
             {{ dragonDescription }}
      </div>
</div>
</div>
</template>

<script>
export default{
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
.container2{
    /* display: flex;
    align-items: right;
    justify-content: right; */
    position: fixed;
  bottom: 10%;
  right: 20%;
  display: flex;
  align-items: flex-end;
  justify-content: flex-end;

}
.box2{
    width: 45%;
    display: flex;
    justify-content: center;
    background-color: rgb(255, 255, 255);
    border-radius: 2%;
    box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
    border-style: double;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
    
}
.content2{
    height: 250px;
}

@media screen and (max-width: 900px) {
   .box2{
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: rgb(255, 255, 255);
    border-radius: 2%;
    box-shadow: 20px 20px 50px rgba(215, 215, 215, 0.684);
    border-style: double;
    
}
.content2{
    height: 250px;
} 
.container2{
    /* display: flex;
    align-items: right;
    justify-content: right; */
    /* position: fixed; */
  top: 40%;
  left: 20%;
  /* right: 50%; */
  display: flex;
  align-items: flex-start;
  justify-content: flex-start;
}
}
</style>