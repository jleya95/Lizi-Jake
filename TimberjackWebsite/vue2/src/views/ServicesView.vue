<template>
    <div class="services">
        <h1 class="services-h1">OUR SERVICES</h1>
        <services-component></services-component>
    </div>
    <!-- <tree-risk-assessment-component></tree-risk-assessment-component>
    <tree-removal-component></tree-removal-component>
    <land-lot-clearing-component></land-lot-clearing-component>
    <stump-grinding-component></stump-grinding-component>
    <tree-pruning-component></tree-pruning-component>
    <firewood-component></firewood-component>
    <leaf-cleanup-component></leaf-cleanup-component>
    <truck-crane-component></truck-crane-component> -->
</template>

<script>
import ServicesComponent from '@/components/ServicesComponent.vue'
// import FirewoodComponent from '@/components/OurServicesComponents/FirewoodComponent.vue'
// import LandLotClearingComponent from '@/components/OurServicesComponents/LandLotClearingComponent.vue'
// import LeafCleanupComponent from '@/components/OurServicesComponents/LeafCleanupComponent.vue'
// import StumpGrindingComponent from '@/components/OurServicesComponents/StumpGrindingComponent.vue'
// import TreePruningComponent from '@/components/OurServicesComponents/TreePruningComponent.vue'
// import TreeRemovalComponent from '@/components/OurServicesComponents/TreeRemovalComponent.vue'
// import TreeRiskAssessmentComponent from '@/components/OurServicesComponents/TreeRiskAssessmentComponent.vue'
// import TruckCraneComponent from '@/components/OurServicesComponents/TruckCraneComponent.vue'

export default {
    components: {
        ServicesComponent,
        // FirewoodComponent,
        // LandLotClearingComponent,
        // LeafCleanupComponent,
        // StumpGrindingComponent,
        // TreePruningComponent,
        // TreeRemovalComponent,
        // TreeRiskAssessmentComponent,
        // TruckCraneComponent
    }
}
</script>

<style>
.services-h1 {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 1%;
    font-size: 200%;
    font-weight: bold;
}

.services {
    margin-top: 5%;
    background-color: rgba(255, 255, 255, 0.777);
    margin-left: 10%;
    margin-right: 10%;
    border-radius: 2%;
    padding-bottom: 2%;
    padding-top: 2%;
}
</style>