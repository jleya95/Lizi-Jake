<template>
    <nav class="navbar has-text-weight-bold is-size-6 is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-itemPic" href="/">
                <img class="logoImage" src="../../img/logo6.6.png" width="130" height="100">
            </a>
        </div>
        <div class="navbar-end">
            <div class="navbar-icons">
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
                            <a class="navbar-item" href="/meet">Meet The Owner</a>
                        </div>
                    </div>
            </div>
        </div>
    </nav>
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
@media screen and (max-width: 800px) {
    .navbar-icons {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        margin-right: 10%;
        margin-top: -15%;
    }
    .menuDrop{
        position: fixed;
        top:2.5%; 
        right: 5%; 
        cursor: pointer;
        margin-top: -0.8%;
        color: rgb(217, 102, 42); 
       
    }
    .navbar-dropdown.is-right {
        position: absolute;
        right: -50px;
        background-color: rgba(138, 189, 157);
        top: 34px;
        width: 230px;
        text-align: right;
    }
    .navbar {
  background-color: rgba(138, 189, 157);
}
}

</style>