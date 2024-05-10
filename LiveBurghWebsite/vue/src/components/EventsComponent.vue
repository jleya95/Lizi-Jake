<template>
  <div id="evento" class="section">
    <div class="glass">
      <h1 class="eventLB">EVENTS</h1>
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
  </div>
</template>

<style scoped>
.eventLB{
  text-align: center;
  font-size: 130%;

}
.section {
  display: flex;
  flex-direction: column;
  align-items: center;
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

#evento {
  background-color: rgb(33, 9, 49);
}

.glass {
  background: rgba(28, 28, 28, 0.28);
  border-radius: 16px;
  box-shadow: 0 4px 30px rgba(207, 207, 207, 0.1);
  backdrop-filter: blur(5.7px);
  -webkit-backdrop-filter: blur(5.7px);
  border: 1px solid rgba(35, 12, 48, 0.67);
}
</style>