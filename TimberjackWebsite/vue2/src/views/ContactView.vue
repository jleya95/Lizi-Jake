<template>
    <div class="contact">
        <h1 class="contactH1">CONTACT US</h1>
         <h1 class="phoneNumb">412-770-7617</h1>
        <contact-component></contact-component>
        <social-media-icons-mobile-component></social-media-icons-mobile-component>
    </div>
</template>

<script>

import ContactComponent from '../components/ContactComponent.vue';
import SocialMediaIconsMobileComponent from '../components/SocialMediaIconsMobileComponent.vue';

export default {
    components: {
        ContactComponent,
        SocialMediaIconsMobileComponent
    }
}
</script>

<style>
.contact{
  margin-top: 5%;
  background-color: rgba(255, 255, 255, 0.777);
  margin-left: 10%;
  margin-right: 10%;
  border-radius: 2%;
  padding-bottom: 2%;
  padding-top: 2%;
}

.contactH1{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 1%;
    font-size: 200%;
    font-weight: bold;
    color: rgb(20, 91, 30);
}
.phoneNumb{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 5%;
    font-size: 140%;
    color: rgb(217, 102, 42);
}
@media screen and (max-width: 1024px) {
  .contact{
  margin-top: 5%;
  background-color: rgba(255, 255, 255, 0.777);
  margin-left: 2%;
  margin-right: 2%;
  border-radius: 2%;
  padding-bottom: 2%;
  padding-top: 2%;
  padding-left: 8%;
}

}
</style>