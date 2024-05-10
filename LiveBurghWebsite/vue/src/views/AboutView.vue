<template>
    <section-component id="About" :bgPosition="aboutBgPosition">
        <about-component v-if="!mobileView"></about-component>
        <about-mobile-component v-if="mobileView"></about-mobile-component>
    </section-component>

</template>

<script>

import AboutComponent from '../components/AboutComponent.vue';
import AboutMobileComponent from '../components/AboutMobileComponent.vue';
import SectionComponent from '../components/SectionComponent.vue';
export default {
    components: {
        AboutComponent,
        AboutMobileComponent,
        SectionComponent

    },
    data() {
        return {
            mobileView: true,
            // showNav: false,
        };
    },
    methods: {
        handleView() {
            this.mobileView = window.innerWidth <= 900;
        }
    },
    created() {
        this.handleView();
        window.addEventListener('resize', this.handleView);
    }
}
</script>