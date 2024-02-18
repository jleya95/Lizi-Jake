<template>
  <div class="center_form">
    <form class="Form" id="EmailForm">
      <div class="field is-horizontal">
        <div class="field-label is-normal">
          <label class="label">From<span class="required">*</span></label>
        </div>
        <div class="field-body">
          <div class="field">
            <p class="control is-expanded has-icons-left">
              <input class="input" type="text" name="Name" placeholder="Name" v-model="Info.Name">
              <span class="icon is-small is-left">
                <i class="fas fa-user"></i>
              </span>
            </p>
          </div>
          <div class="field">
            <p class="control is-expanded has-icons-left has-icons-right">
              <input class="input is-success" type="email" name="Email" placeholder="Email" v-model="Info.Email">
              <span class="icon is-small is-left">
                <i class="fas fa-envelope"></i>
              </span>
              <span class="icon is-small is-right">
                <i class="fas fa-check"></i>
              </span>
            </p>
          </div>
        </div>
      </div>

      <div class="field is-horizontal">
        <div class="field-label"></div>
        <div class="field-body">
          <div class="field is-expanded">
            <div class="field has-addons">
              <p class="control">
                <a class="button is-static">
                  +1
                </a>
              </p>
              <p class="control is-expanded">
                <input class="input" type="tel" name="Phone Number" placeholder="Your phone number" v-model="Info.Phone">
              </p>
            </div>
          </div>
        </div>
      </div>

      <div class="field is-horizontal">
        <div class="field-label is-normal">
          <label class="label">Subject<span class="required">*</span></label>
        </div>
        <div class="field-body">
          <div class="field">
            <div class="control">
              <input class="input" type="text" name="Subject" placeholder="e.g. Partnership opportunity"
                v-model="Info.Subject">
            </div>
          </div>
        </div>
      </div>

      <div class="field is-horizontal">
        <div class="field-label is-normal">
          <label class="label">Message<span class="required">*</span></label>
        </div>
        <div class="field-body">
          <div class="field">
            <div class="control">
              <textarea class="textarea" name="Message" placeholder="Explain how we can help you"
                v-model="Info.Message"></textarea>
            </div>
          </div>
        </div>
      </div>
      <!-- <div role="alert" v-if="formErrors">{{ formErrorMessage }}</div> -->
      <p class="error-message" v-if="formErrors">{{ formErrorMessage }}</p>
      <div class="field is-horizontal">
        <div class="field-label">
          <!-- Left empty for spacing -->
        </div>
        <div class="field-body">
          <div class="field">
            <div class="control">
              <button class="button" type="submit" @click="checkForm">
                Send
              </button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import ContactService from '@/services/ContactService.js'

export default {

  data() {
    return {
      Info: {
        Name: "",
        Email: "",
        Phone: "",
        Subject: "",
        Message: "",
      },
      formErrors: false,
      formErrorMessage: ""
    }
  },
  methods: {
    checkForm: function (e) {
      if (this.Info.Name && this.Info.Email && this.Info.Phone && this.Info.Subject && this.Info.Message) {
        return this.submitForm();
      }

      if (!this.Info.Name || !this.Info.Email || !this.Info.Phone || !this.Info.Subject || !this.Info.Message) {
        this.formErrors = true;
        this.formErrorMessage = "Please fill out all required(*) elements";
      }

      e.preventDefault();
    },
    submitForm() {
      ContactService.contactUsFormSubmit(this.Info)
        .then((response) => {
          if (response.status == 200) {
            this.displayPopUp()
          }
        })
        .catch((error) => {
          this.formErrors = true;
          if (error.response === 400) {
            this.formErrorMessage = "Please fill out required forms"
          }
        })
    }
  }
};
</script>

<style>
.button {
  background-color: rgb(138, 189, 157);
}

.button:hover {
  background-color: rgb(217, 102, 42);
}

.center_form {
  margin-right: 10%;


}

.required, .error-message {
  color: red;
}

@media screen and (max-width: 800) {
  .center_form {
    margin-right: 10%;
    margin-left: 10%;

  }
}
</style>