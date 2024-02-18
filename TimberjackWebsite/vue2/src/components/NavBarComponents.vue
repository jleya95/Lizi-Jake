<template>
  <nav class="navbar has-text-weight-bold is-size-6 is-fixed-top" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-itemPic" href="/">
        <img class="logoImage" src="../../img/logo6.6.png" width="150" height="100">
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item" href="/">
          Home
        </a>

        <div class="navbar-item has-dropdown is-left about-dropdown" :class="{ 'is-active': dropdownVisible }"
          @click="toggleDropdown">
          <span class="menuDrop2">
            About
          </span>
          <div v-if="dropdownVisible" class="navbar-dropdown is-left dropElements">
            <a class="navbar-item itemAbout" href="/about">
              About
            </a>

            <a class="navbar-item itemMeet" href="/MeetTheOwner">
              Meet the owner
            </a>
          </div>
          </div>

          <a class="navbar-item" href="/services">
            Services
          </a>

          <a class="navbar-item menuContact" href="/contact">
            Contact
          </a>

        

      </div>

      </div>

      <div class="navbar-end">

        <div class="navbar-start">
            <a class="numb is-size-3" href="tel:412-770-7617">412-770-7617</a>
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

          <span class="icon4">
            <a class="google-link" href="https://g.co/kgs/niEg1gx" target="_blank">
              <i class="fa-brands fa-google fa-2x" aria-hidden="true"></i>
            </a>
          </span>

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

<style>

.numb {
  display: flex;
  align-items: center;
  white-space: nowrap;
}

.navbar {
  background-color: rgba(138, 189, 157, 0.755);
}

.icon1 {
  margin: 5%;
}

.icon2 {
  margin: 5%;
}

.icon3 {
  margin: 5%;

}

.icon1,
.icon2,
.icon3,
.icon4 {
  margin-right: 5%;
}

.icon4 {
  margin-right: 80px;
  margin-left: 5%;
}

.navbar-start .navbar-item:first-child {
  margin-left: 9%;
}

.navbar-start .navbar-item:first-child:hover, .itemMeet:hover {
  color: rgb(217, 102, 42);
  background-color: transparent;
}

.navbar-start .navbar-item:hover, .itemMeet:hover {
  color: rgb(217, 102, 42);
  background-color: transparent;
}

.icon1:hover,
.icon2:hover,
.icon3:hover,
.icon4:hover {
  color: rgb(217, 102, 42);
}

.navbar-menu a.navbar-icons:hover {
  background-color: rgb(138, 189, 157);
  color: rgb(217, 102, 42);
}

.icon3 a.facebook-link {
  color: rgb(74, 74, 74);
}

.icon1 a.contact-link {
  color: rgb(74, 74, 74);
}

.icon4 a.google-link {
  color: rgb(74, 74, 74);
}

.icon1 a.contact-link:hover {
  color: rgb(217, 102, 42);
}

.icon4 a.google-link:hover {
  color: rgb(217, 102, 42);
}

.icon3 a.facebook-link:hover {
  color: rgb(217, 102, 42);
}

.icon2 a.insta-link {
  color: rgb(74, 74, 74);
}

.icon2 a.insta-link:hover {
  color: rgb(217, 102, 42);
}

.navbar-item {
  font-size: 24px;
}

.navbar-icons {
  display: flex;
  align-items: center;
}

.navbar-itemPic {
  margin-top: 2%;
}

.logoImage {
  margin-left: 5%;
}
 .menuDrop2{
margin-top: 24%;
 }

 .menuDrop2:hover{
  color: rgb(217, 102, 42);
 }

 .dropElements{
  background-color: rgba(138, 189, 157, 0.755);

 }


.dropElements .itemMeet:hover {
  color: rgb(217, 102, 42);
}


.dropElements .navbar-item:hover,
.dropElements .navbar-item.itemMeet:hover {
  color: rgb(217, 102, 42) !important;
  background-color: transparent !important;
}

.itemMeet{
margin-left: 8%;
}
.menuContact{
  margin-left: -3%;
}
</style>