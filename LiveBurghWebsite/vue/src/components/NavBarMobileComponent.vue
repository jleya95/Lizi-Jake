<template>
    <nav>
        <ul>
            <li><a @click="scrollToSection('Home')">Home</a></li>
            <li><a @click="scrollToSection('Events')">Events</a></li>
            <li><a @click="scrollToSection('About')">About</a></li>
            <li><a @click="scrollToSection('ContactUs')">Contact</a></li>
            <li><a @click="scrollToSection('Shop')">Shop</a></li>
        </ul>
    </nav>
</template>

<script>
export default {
    methods: {
        scrollToSection(sectionId) {
            const section = document.getElementById(sectionId);
            if (section) {
                section.scrollIntoView({ behavior: 'smooth' });
            }
        }
    }
}

</script>
<style scoped>

@media screen and (max-width: 900px) {

nav {
    background-color: rgba(0, 0, 0, 0.305);
    padding: 10px;
    position: fixed;
    width: 100%;
    font-size: 80%;
    top: 0;
    box-shadow:  0px 2px 4px rgba(0, 0, 0, 0.167);
    z-index: 1000;
}

ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: flex-end;
    margin-right: 5%;
}

li {
    margin-left: 5%;
}

a {
    text-decoration: none;
    color: rgb(255, 255, 255);
    font-weight: bold;
    font-size: 80%;
}
}
</style>
