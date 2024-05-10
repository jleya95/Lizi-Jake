<template>
    <section-component id="ContactUs" :bgPosition="skillsBgPosition">
        <contact-us-component></contact-us-component>
      </section-component>

</template>

<script>
import ContactUsComponent from '../components/ContactUsComponent.vue';
import SectionComponent from '../components/SectionComponent.vue';

export default {
    components: {
        ContactUsComponent,
        SectionComponent
    }
}

</script>