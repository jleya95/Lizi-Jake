<template>
    <div class="tree-risk-assessment">
        <div class="flex-container-services">
            <img class="service-img-risk" src="/img/RoundCornerServiceImgs/RoundedEdits/risk-modified.gif">
            <div class="service-text">
                <h2 class="service-header">TREE RISK ASSESSMENT</h2>
                <p>Let one of our professionals take a walk around your property with you and have a look at the health and
                    well
                    being
                    of your trees. Some times there are potential risks and hazards that go unnoticed to the untrained eye
                    that
                    can
                    be
                    devastating to your home and property in the event that a tree was to unexpectedly fail.
                </p>
            </div>
        </div>
    </div>
    <div class="tree-removal">
        <div class="flex-container-services">
            <div class="service-text">
                <img src="/img/RoundCornerServiceImgs/RoundedEdits/removal-modified.png" class="service-img">
                <h2 class="service-header">TREE REMOVAL</h2>
                <p>TimberJack Tree Service will remove hazardous and unwanted trees from your property safely & efficiently…
                </p>
            </div>
        </div>
    </div>
    <div class="land-lot-clearing">
        <div class="flex-container-services">
            <!-- <img src="/img/CircleImgs/10-modified.png" class="service-img"> -->
            <img src="/img/beforeAfterGif.gif" class="service-img">
            <div class="service-text">
                <h2 class="service-header">LAND & LOT CLEARING</h2>
                <p>Looking to build a home in a wooded area or just wanting to expand your yard space?...</p>
            </div>
        </div>
    </div>
    <div class="stump-grinding">
        <div class="flex-container-services">
            <img src="/img/RoundCornerServiceImgs/RoundedEdits/grinding-modified.png" class="service-img">
            <div class="service-text">
                <h2 class="service-header">STUMP GRINDING</h2>
                <p>Say goodbye to unsightly stumps and reclaim your yard space...</p>
            </div>
        </div>
    </div>
    <div class="tree-pruning">
        <div class="flex-container-services">
            <img src="/img/RoundCornerServiceImgs/RoundedEdits/pruining2-modified.png" class="service-img">
            <div class="service-text">
                <h2 class="service-header">TREE PRUNING</h2>
                <p>Proper pruning enhances the health, safety and appearance of your trees and property…</p>
            </div>
        </div>
    </div>
    <div class="firewood">
        <div class="flex-container-services">
            <div class="service-text">
                <img class="service-img" src="/img/RoundCornerServiceImgs/timberjack_firewood-modified.png">
                <h2 class="service-header">FIREWOOD</h2>
                <p>Need to stock up on firewood at your home or business for the winter months or just looking to have a
                    relaxing
                    campfire with family and friends this summer/fall? We have dry seasoned firewood that can be delivered
                    right
                    to
                    your
                    door.</p>
            </div>
        </div>
    </div>
    <!-- <div class="leaf-cleanup">
        <div class="flex-container-services">
            <img src="/img/RoundCornerServiceImgs/RoundedEdits/leaf_cleanup-edit-modified.png" class="service-img">
            <div class="service-text">
                <h2 class="service-header">SPRING & FALL LEAF CLEANUPS</h2>
                <p>Lets face it, not everyone loves to clean leaves. Except for TimberJack Tree Service! We can clean
                    unwanted leaves &
                    fall debris from your property to keep it looking clean and crisp.
                    “No Leaf Left Behind!”</p>
            </div>
        </div>
    </div> -->
    <div class="truck-crane">
        <div class="flex-container-services">
            <div class="service-text">
                <img class="service-img" src="/img/RoundCornerServiceImgs/RoundedEdits/bucket-modified.png">
                <h2 class="service-header">BUCKET TRUCK & CRANE SERVICE</h2>
                <p>Need a lift? Building a home? Or have a heavy object that needs to be set in a specific spot? We can help
                    with
                    that too.</p>
            </div>
        </div>
    </div>
</template>

<script>
</script>

<style>
h2 {
    font-weight: bold;
    font-size: 150%;
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

.service-text {
    margin: 5%;
}

.service-img {
    width: 35%;
}

.service-header {
    color: rgb(20, 91, 30);
}

@media screen and (max-width: 1024px) {

    .flex-container-services {
    margin-left: 5%;
    margin-right: 5%;
    display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
    font-size: 100%;
    text-align: center;
}
.service-img {
    width: 100%;
    align-items: center;
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin-bottom: 5%;
    margin-top: 5%;
}
.tree-risk-assessment{
    margin-top: 5%;
}
/* .service-headerLeaf{
  font-size: 120%;  
} */
}
.service-img-risk {
    height: 350px;
}

</style>