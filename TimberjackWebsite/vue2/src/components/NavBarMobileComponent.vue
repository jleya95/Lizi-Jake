<template>
    <nav class="navbar has-text-weight-bold is-size-6 is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-itemPic" href="/">
                <img class="logoImage" src="../../img/logo6.6.png" width="130" height="100">
            </a>
            <a class="numb is-size-3" href="tel:412-770-7617">412-770-7617</a>
        </div>
        <div class="navbar-end">
            <!-- <div class="navbar-icons"> -->

            <div class="navbar-item has-dropdown is-right" :class="{ 'is-active': dropdownVisible }"
                @click="toggleDropdown">
                <span class="menuDrop">
                    <i class="fa-solid fa-bars fa-1x"></i>
                </span>
                <div v-if="dropdownVisible" class="navbar-dropdown is-right">
                    <a class="navbar-item" href="/">Home</a>
                    <a class="navbar-item" href="/about">About</a>
                    <a class="navbar-item" href="/services">Services</a>
                    <a class="navbar-item" href="/contact">Contact</a>
                    <a class="navbar-item" href="/MeetTheOwner">Meet The Owner</a>
                <!-- <div class="socialMedIcon">
                    <span class="icon1">
                            <a class="contact-link" href="/contact">
                                <i class="fa-solid fa-envelope fa-2x" aria-hidden="true"></i>
                            </a>
                    </span>
                    <span class="icon2">
                        <a class="insta-link" href="https://www.instagram.com/timberjacktreeservice/?hl=en" target="_blank">
                            <i class="fa-brands fa-square-instagram fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>
                    <span class="icon3">
                        <a class="facebook-link" href="https://www.facebook.com/TimberJackPittsburgh" target="_blank">
                            <i class="fa-brands fa-facebook fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>

                    <span class="icon4">
                        <a class="google-link" href="" target="_blank">
                            <i class="fa-brands fa-google fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>
                </div> -->
            </div>
        </div>
        </div>
        <!-- </div> -->
    </nav>
    <!-- <div class="socialMedIcon">
                    <span class="icon1">
                            <a class="contact-link" href="/contact">
                                <i class="fa-solid fa-envelope fa-2x" aria-hidden="true"></i>
                            </a>
                    </span>
                    <span class="icon2">
                        <a class="insta-link" href="https://www.instagram.com/timberjacktreeservice/?hl=en" target="_blank">
                            <i class="fa-brands fa-square-instagram fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>
                    <span class="icon3">
                        <a class="facebook-link" href="https://www.facebook.com/TimberJackPittsburgh" target="_blank">
                            <i class="fa-brands fa-facebook fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>

                    <span class="icon4">
                        <a class="google-link" href="" target="_blank">
                            <i class="fa-brands fa-google fa-2x" aria-hidden="true"></i>
                        </a>
                    </span>
                </div> -->
</template>
  
<script>
export default {
    data() {
        return {
            dropdownVisible: false,
        };
    },
    methods: {
        toggleDropdown() {
            this.dropdownVisible = !this.dropdownVisible;
        }
    }
};
</script>
  
<style scoped>
@media screen and (max-width: 1024px) {
    .navbar-icons {
        /* display: flex;
        justify-content: flex-end;
        align-items: center;
        margin-right: 10%; 
        margin-top: -15%; */

        position: fixed;
        top: 1.8%;
        right: 15%;
        cursor: pointer;
        margin-top: -0.8%;

    }

    .menuDrop {
        position: fixed;
        top: 2.5%;
        right: 5%;
        cursor: pointer;
        margin-top: -0.8%;
        color: rgb(217, 102, 42);
        padding-right: 1%;

    }

    .navbar-dropdown.is-right {
        position: absolute;
        right: 0px;
        background-color: rgba(138, 189, 157);
        width: 230px;
        text-align: right;
    }

    .navbar {
        background-color: rgba(138, 189, 157);
    }

    .numb {
        display: flex;
        align-items: center;
        white-space: nowrap;
        margin-left: 6%;
    }

    /* .socialMedIcon{
        display: flex;
        align-items: center;
        margin-left: 10%;
    } */


}
</style>