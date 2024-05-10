<template>
    <div id="Events" class="section">
      <div class="event-container">
        <!-- <h1 id="event">Events</h1> -->
        <div class="event-class">
          <div class="flex-container-services">
            <div class="circle">05.11</div>
            <div class="event-text">
              <h2 class="event-header">Slim Forsythe & the 10th Ward Troubadours</h2>
              <p></p>
            </div>
            <img src="../img/Events3.png" class="event-img">
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <style scoped>
  .section {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  
  #event {
    text-align: center; 
    font-size: 160%;
  }
  

  .event-text {
    font-size: 70%;
    margin: 5%;
  }
  
  .flex-container-services {
    margin-left: 5%;
    margin-right: 5%;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
  }
  
  .event-img {
    width: 30%;
    border-radius: 5%;
  }
  
  .event-header {
    font-size: 140%;
    margin-bottom: 4%;
  }
  
  .circle {
    width: 80px;
    height: 80px;
    line-height: 80px;
    border-radius: 50%;
    font-size: 30px;
    color: hwb(188 8% 13%);
    text-align: center;
    outline-style: solid;
  }
  #Events{
    background-color: rgb(33, 9, 49);
  }
  </style>
  