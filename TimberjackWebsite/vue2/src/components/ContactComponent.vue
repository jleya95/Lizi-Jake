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
      <p class="error-message-contact" v-if="formErrors">{{ formErrorMessage }}</p>
      <!-- <div role="alert" v-if="formErrors">{{ formErrorMessage }}</div> -->
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
  <div v-if="showPopUp" class="popup">
    <form-popup-component></form-popup-component>
  </div>
</template>

<script>
import ContactService from '@/services/ContactService.js'
import FormPopupComponent from '@/components/FormPopupComponent.vue'

export default {
  components: {
    FormPopupComponent
  },
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
      formErrorMessage: "",
      showPopUp: false
    }
  },
  methods: {
    checkForm: function (e) {
      if (this.Info.Name && this.Info.Email && this.Info.Phone && this.Info.Subject && this.Info.Message) {
        this.replaceEntersInMessage(e);
        return this.submitForm(e);
      }

      if (!this.Info.Name || !this.Info.Email || !this.Info.Phone || !this.Info.Subject || !this.Info.Message) {
        this.formErrors = true;
        this.formErrorMessage = "Please fill out all required(*) elements";
      }

      e.preventDefault();
    },
    submitForm(e) {
      e.preventDefault();
      ContactService.contactUsFormSubmit(this.Info)
        .then((response) => {
          if (response.status === 200) {
            return this.displayPopUp(e)
          }
        })
        .catch((error) => {
          this.formErrors = true;
          if (error.response === 400) {
            this.formErrorMessage = "Please fill out required forms"
          }
        })
    },
    displayPopUp(e) {
      this.showPopUp = true;
    },
    replaceEntersInMessage(e) {
      this.Info.Message = this.Info.Message.replaceAll(/\n/g, "   ")
    }
  }
};
</script>

<style>
.error-message-contact {
  text-align: left;
  margin-left: 19%;
}

.button {
  background-color: rgb(138, 189, 157);
}

.button:hover {
  background-color: rgb(217, 102, 42);
}

.center_form {
  margin-right: 10%;


}

.required,
.error-message-contact {
  color: red;
}

.popup {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 99;
  background-color: rgba(0, 0, 0, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
}


@media screen and (max-width: 800px) {
  .error-message-contact {
    margin-left: 0%;
  }

  .center_form {
    margin-right: 10%;
    margin-left: 10%;

  }

}
</style>