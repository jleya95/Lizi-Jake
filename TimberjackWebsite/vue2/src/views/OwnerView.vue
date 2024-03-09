<template>
    <div class="meetOwner">
        <h1 class="meet">MEET THE OWNER</h1>
        <meet-the-owner-component></meet-the-owner-component>
        <social-media-icons-mobile-component></social-media-icons-mobile-component>
    </div>
</template>

<script>

import MeetTheOwnerComponent from '../components/MeetTheOwnerComponent.vue';
import SocialMediaIconsMobileComponent from '../components/SocialMediaIconsMobileComponent.vue';

export default {
    components: {
        MeetTheOwnerComponent,
        SocialMediaIconsMobileComponent
    }
}
</script>

<style>
.meet {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 1%;
    font-size: 200%;
    font-weight: bold;
    color: rgb(20, 91, 30);
}

.meetOwner {
    margin-top: 5%;
    background-color: rgba(255, 255, 255, 0.777);
    margin-left: 10%;
    margin-right: 10%;
    border-radius: 2%;
    padding-bottom: 2%;
    padding-top: 2%;
}

@media screen and (max-width: 900px) {

    .meetOwner {
        margin-top: 5%;
        background-color: rgba(255, 255, 255, 0.777);
        margin-left: 2%;
        margin-right: 2%;
        border-radius: 2%;
        padding-bottom: 2%;
        padding-top: 2%;
    }

    .meet {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 1%;
        font-size: 200%;
        font-weight: bold;
        color: rgb(20, 91, 30);
    }


}
</style>