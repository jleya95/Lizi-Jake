<template>
    
    <section-component id="Shop" :bgPosition="projectsBgPosition">
        <shop-component></shop-component>
      </section-component>

</template>

<script>

import ShopComponent from '../components/ShopComponent.vue'
import SectionComponent from '../components/SectionComponent.vue';

export default {
    components: {
        ShopComponent,
        SectionComponent
    }
}
</script>