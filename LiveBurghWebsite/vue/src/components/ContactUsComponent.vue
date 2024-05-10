<template>
    <div class="description">
        <h2 class="contact">CONTACT US</h2>
        <p class="owner">Owner: Chris Leya</p>
        <p class="address">Liveburghstudio
2629 Middle Road Glenshaw, PA 15116</p>
<p class="access">Contact directly for booking inquiries or accessibility issues</p>
<p class="phone">
(412)726-2563</p>
<p>Send Message</p>
        <contact-form-component></contact-form-component>
    </div>
</template>

<script>
import ContactFormComponent from './ContactFormComponent.vue';

export default{
    components: {
        ContactFormComponent

    }
}
</script>
<style>
#description {
    display: block; 
    text-align: left;
}
.contact{
    font-size: 130%;
    text-align: center;
}
.address,.phone,.owner,.access{
    font-size: 70%;
    display: flex;
    justify-content: center;
    margin: 1%;
    text-align: center;
}
.access{
    font-size: 60%;
}
.owner{
    margin-top: 5%;
}
.phone{
    margin-bottom: 5%;
}
</style>