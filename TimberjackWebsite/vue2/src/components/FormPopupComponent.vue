<template>
    <div class="popup-container">
        <div class="text">
            <h1 class="popup-header">MESSAGE SENT</h1>
            <div class="popup-paragraph">
                <p>Thank you for your inquiry with TimberJack Tree Service!</p>
                <p>Your message has been sent and we will be in contact with you as soon as possible.</p>
            </div>
        </div>
        <button class="button" @click="closePopup()">Close</button>
    </div>
</template>

<script>
export default {
    methods: {
        closePopup() {
            return location.reload();
        }
    }
}

</script>

<style>
.popup-header {
    color: rgb(217, 102, 42);
    font-weight: bold;
    font-size: 150%;
}
.popup-container {
    /* background-color: rgba(138, 189, 157); */
    background-color: rgba(255, 255, 255);
    display: flex;
    flex-direction: column;
    align-items: center;
    align-content: center;
    text-align: center;
    padding: 1%;
    width: 40%;
    border-radius: 20px;
}

.button {
    margin: 2%;
    background-color: rgb(138, 189, 157);
    border-color: black;
}

.button:hover {
    background-color:rgb(217, 102, 42);
    border-color: black;
}

</style>