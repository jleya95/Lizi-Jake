<template>
  <div class="flex-containerHome">
    <img class="mod-20" src="/img/16copyCircle.png">
    <div class="text">
      <h1 class="welcome">Welcome to TimberJack Tree Service!</h1>
      <p class="decription">We are your Neighborhoods Tree Care & Tree Removal Professionals!
        Our crews have the know-how, equipment, and skills to tackle all of your tree care needs!</p>
        <p class="call">Call, Text or Email Today To Schedule a <span class="free">FREE</span>
          Estimate & Experience the TimberJack Difference! </p>
          <h2 class="exceed">“Exceeding Your Expectations One Cut At A Time!"</h2>
          <!-- <div clas="contactInfo"></div> -->
      <!-- <a class="numb" href="tel:412-770-7617">412-770-7617</a>
      <p class="email">TIMBERJACKTREE@GMAIL.COM</p> -->
      <p class="licensed">FULLY LICENSED & INSURED</p>
      <div class="bbb">
      <img src="/img/bbb.png">
    </div>
      <div style="clear: both;"></div>
    </div>
  </div>


</template>
  
<style>
.text {
  position: relative;
  top: 0;

}


.flex-containerHome {
  /* display: flex; */
  flex-direction: row;
  align-items: center;
  justify-content: center;
 text-align: left;
font-family: "Rockwell Extra Bold";
margin-right: 4%;

} 

.decription {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;


}

.welcome {
  align-items: center;
  justify-content: center;
  font-size: 190%;
  font-weight: 800;
  margin-top: 10%;
  color: rgb(20, 91, 30);
  margin-bottom: 2%;
  text-align: center;

}

.numb,.email {
  margin-bottom: 2%;
  margin-top: 2%;
  display: inline-block;
  font-size: 120%;
  font-weight: 800;
  margin-right: 2%
}

 .licensed {
  font-size: 110%;
  font-weight: 800;
  text-align: center;
}

.exceed,
.free {
  color: rgb(217, 102, 42);
}

.numb:hover,
.email:hover {
  color: rgb(217, 102, 42);
} 

.mod-20 { 
   height: 600px; 
   /* height: 90%;  */
   /* height: auto; */
  max-width: 40%;
  /* margin: 5%; */
  float: left;
  margin-right: 2%;
  margin-top: -2%;
  margin-bottom: 5%;
  margin-left: 5%;
}

.decription,
.call {
  font-size: 120%;
  text-align: center;
}

.exceed{
  font-size: 140%;
  margin-top: 2%;
  margin-bottom: 2%;
  text-align: center;
}
.numb{
  color: rgb(65, 65, 65);
}

.bbb {
  display: flex;
  align-items: center;
  justify-content: center;
}

.bbb img {
  width: 25%; 
  height: auto; 
}

@media screen and (max-width: 1024px) {
 
  .flex-containerHome {
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
  }

  .welcome {
    margin-top: 5%; 
    font-size: 350%;
  }

  .mod-20 {
    max-width: 95%;
    margin: 2; 
    max-height: 50%;
    
    }
  .exceed{
  font-size: 180%;
  margin-bottom: 2%;
}
.licensed {
  font-size: 110%;
  font-weight: 800;
  margin-bottom: 2%;
  margin-top: 10%;
}

.bbb {
  display: flex;
  align-items: center;
  justify-content: center;
}

.bbb img {
  width: 50%; 
  height: auto; 
  margin-bottom: 10%;
}


}

</style> 
