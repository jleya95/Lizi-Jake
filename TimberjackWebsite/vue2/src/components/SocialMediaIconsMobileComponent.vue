<template>
    <div class="socialMedIcon" v-if="mobileView">
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
</template>

<script>
export default {
    components: {
  
    },
    data: () => {
    return {
      mobileView: true,
    };
  },
  methods: {
    handleView() {
      this.mobileView = window.innerWidth <= 900;
    }
},
created() {
    this.handleView();
    window.addEventListener('resize', this.handleView);
  }
}
</script>

<style>
@media screen and (max-width: 900px) {
.socialMedIcon{
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 10%;
    margin-left: 15%;
}
}
</style>