<template>
    <h1>Our Services</h1>
    <tree-risk-assessment-component></tree-risk-assessment-component>
    <tree-removal-component></tree-removal-component>
    <land-lot-clearing-component></land-lot-clearing-component>
    <stump-grinding-component></stump-grinding-component>
    <tree-pruning-component></tree-pruning-component>
    <firewood-component></firewood-component>
    <leaf-cleanup-component></leaf-cleanup-component>
    <truck-crane-component></truck-crane-component>
</template>

<script>
import FirewoodComponent from '@/components/OurServicesComponents/FirewoodComponent.vue'
import LandLotClearingComponent from '@/components/OurServicesComponents/LandLotClearingComponent.vue'
import LeafCleanupComponent from '@/components/OurServicesComponents/LeafCleanupComponent.vue'
import StumpGrindingComponent from '@/components/OurServicesComponents/StumpGrindingComponent.vue'
import TreePruningComponent from '@/components/OurServicesComponents/TreePruningComponent.vue'
import TreeRemovalComponent from '@/components/OurServicesComponents/TreeRemovalComponent.vue'
import TreeRiskAssessmentComponent from '@/components/OurServicesComponents/TreeRiskAssessmentComponent.vue'
import TruckCraneComponent from '@/components/OurServicesComponents/TruckCraneComponent.vue'

export default {
    components: {
        FirewoodComponent,
        LandLotClearingComponent,
        LeafCleanupComponent,
        StumpGrindingComponent,
        TreePruningComponent,
        TreeRemovalComponent,
        TreeRiskAssessmentComponent,
        TruckCraneComponent
    }
}
</script>

<style>
h1{
    font-weight: bold;
}
</style>