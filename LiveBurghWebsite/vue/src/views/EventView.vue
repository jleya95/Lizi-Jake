<template>
          <section-component id="Events" :bgPosition="aboutBgPosition">
        <events-component></events-component>
      </section-component>
</template>

<script>
import EventsComponent from '../components/EventsComponent.vue';
import SectionComponent from '../components/SectionComponent.vue';

export default{
    components: {
        EventsComponent,
        SectionComponent,

    }
}
</script>