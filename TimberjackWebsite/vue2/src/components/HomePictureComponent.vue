<template>
  <div class="flex-containerHome">
    <img class="mod-20" src="img/20-modified.png">
    <div class="text">
      <h1 class="welcome">Welcome to TimberJack Tree Service!</h1>
      <h2 class="exceed">“Exceeding Your Expectations One Cut At A Time!"</h2>
      <p class="decription">We are your Neighborhoods Tree Care & Tree Removal Professionals!
        Our crews have the know-how, equipment, and skills to tackle all of your tree care needs!</p>
      <p class="call">Call, Text or Email Today To Schedule a <span class="free">FREE</span> Estimate & Experience the TimberJack Difference! </p>
      <div clas="contactInfo"></div>
      <p class="numb">412-770-7617</p>
      <p class="email">TIMBERJACKTREE@GMAIL.COM</p>
      <p class="licensed">FULLY LICENSED & INSURED</p>
    </div>
  </div>
</template>
  
<style>
.flex-containerHome {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  text-align: center;
  font-family: "Rockwell Extra Bold";
  /* margin-right: 5%; */
}

.decription {
  display: flex;
  align-items: center;
  justify-content: center;
}

.welcome {
  align-items: center;
  justify-content: center;
}

.numb,.email {
  margin: 2%;
  display: inline-block; 
  font-size: 150%;
  font-weight: 800;
}

.licensed{
  font-size: 110%;
  font-weight: 800; 
}

.exceed,.free{
  color: orange;
}
.numb:hover, .email:hover{
  color:orange;
}
.mod-20 {
  /* height: 400px; */
  height: auto;
  max-width: 40%;
  margin: 5%;
  margin-top: 10%;
}

.decription,.call{
  font-size: 120%;
}
</style>
