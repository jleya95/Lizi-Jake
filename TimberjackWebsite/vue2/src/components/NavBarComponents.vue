<template>
  <nav class="navbar has-text-weight-bold is-size-6 is-fixed-top" role="navigation" aria-label="main navigation">
<div class="navbar-brand">
  <a class="navbar-itemPic" href="/">
    <img src="../../img/logo8.png" width="150" height="100">
  </a>
</div>

<div id="navbarBasicExample" class="navbar-menu">
  <div class="navbar-start">
    <a class="navbar-item" href="/">
      Home
    </a>

    <a class="navbar-item" href="/about">
      About
    </a>

    <a class="navbar-item" href="/services">
        Services
      </a>

        <a class="navbar-item" href="/contact">
          Contact
        </a>
        
  </div>

  <div class="navbar-end"> 
    <div class="navbar-icons">
        <span class="icon1"> 
          <a class="contact-link" href="/contact">
          <i class="fa-solid fa-envelope fa-2x" aria-hidden="true" ></i>
        </a>
        </span>

        <span class="icon2"> 
          <a class="insta-link" href="https://www.instagram.com/timberjacktreeservice/?hl=en"  target="_blank">
          <i class="fa-brands fa-square-instagram fa-2x" aria-hidden="true"></i>
          </a>
        </span>

        <span class="icon3" > 
          <a class="facebook-link" href="https://www.facebook.com/TimberJackPittsburgh"  target="_blank">
          <i class="fa-brands fa-facebook fa-2x" aria-hidden="true"></i>
          </a>
        </span>


      </div>
      </div>
    </div>
</nav>
</template>

<style>
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
  padding-right: 20px;
}

.icon1,
.icon2,
.icon3 {
  margin-right: 10px;
}

.navbar-start .navbar-item:first-child {
  margin-left: 9%;
}

.navbar-start .navbar-item:first-child:hover {
  color: orange;
  background-color: transparent;
}

.navbar-start .navbar-item:hover {
  color: orange;
  background-color: transparent;
}

.icon1:hover,
.icon2:hover,
.icon3:hover {
  color: orange;
}

.navbar-menu a.navbar-icons:hover {
  background-color: rgb(138, 189, 157);
  color: orange;
}

.icon3 a.facebook-link {
  color: rgb(74, 74, 74);
}
.icon1 a.contact-link {
  color: rgb(74, 74, 74);
}

.icon1 a.contact-link:hover {
  color: orange;
}
.icon3 a.facebook-link:hover {
  color: orange;
}

.icon2 a.insta-link {
  color: rgb(74, 74, 74);
}

.icon2 a.insta-link:hover {
  color: orange;
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

</style>