<template>

  <form class="Form" id="ContactForm" method="POST" action="https://formsubmit.co/57a97cd2daec8f5142e6d74ebebe82c0">
      <div class="field">
          <label class="label">Name</label>
          <div class="field-body">
              <div class="field is-narrow">
                  <p class="control is-expanded has-icons-left">
                      <input class="input" name="FirstName" type="text" placeholder="First" v-model="Info.Name.First">
                      <span class="icon is-small is-left">
                          <i class="fas fa-user"></i>
                      </span>
                  </p>
              </div>
              <div class="field is-narrow">
                  <p class="control is-expanded has-icons-left">
                      <input class="input" name="LastName" type="text" placeholder="Last" v-model="Info.Name.Last">
                      <span class="icon is-small is-left">
                          <i class="fas fa-user"></i>
                      </span>
                  </p>
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">Address</label>
          <div class="control">
              <div class="field-body">
                  <p class="control is-expanded">
                      <input class="input" name="AddressLine1" type="text" placeholder="Line 1" v-model="Info.Address.Line1">
                  </p>
              </div>
              <div class="field-body">
                  <p class="control is-expanded">
                      <input class="input" name="AddressLine2" type="text" placeholder="Line 2" v-model="Info.Address.Line2">
                  </p>
              </div>
              <div class="field-body is-grouped">
                  <div class="field is-narrow">
                      <p class="control is-expanded">
                          <input class="input" name="City" type="text" placeholder="City" v-model="Info.Address.City">
                      </p>
                  </div>
                  <div class="field is-narrow">
                      <p class="control is-expanded">
                          <input class="input" name="State" type="text" placeholder="State" v-model="Info.Address.State">
                      </p>
                  </div>
              </div>
              <div class="field-body is-grouped">
                  <div class="field is-narrow">
                      <p class="control is-expanded">
                          <input class="input" name="ZipCode" type="text" placeholder="Zip Code" v-model="Info.Address.ZipCode">
                      </p>
                  </div>
                  <div class="field is-narrow">
                      <p class="control is-expanded">
                          <input class="input" name="Country" type="text" placeholder="Country" v-model="Info.Address.Country">
                      </p>
                  </div>
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">Email</label>
          <div class="field-body">
              <p class="control is-expanded has-icons-left">
                  <input class="input is-success" name="email" type="email" placeholder="address@email.com" v-model="Info.Email">
                  <span class="icon is-small is-left">
                      <i class="fas fa-envelope"></i>
                  </span>
              </p>
          </div>
      </div>

      <div class="field">
          <label class="label">Phone Number</label>
          <div class="field-body">
              <div class="field">
                  <div class="field has-addons">
                      <p class="control">
                          <a class="button is-static">
                              +1
                          </a>
                      </p>
                      <p class="control">
                          <input class="input" name="PhoneNumber" type="tel" placeholder="Your phone number" v-model="Info.Phone">
                      </p>
                  </div>
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">Comment(s)</label>
          <div class="field-body">
              <div class="control">
                  <input class="input" name="Comment(s)" type="text" v-model="Info.Comments">
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">Contact Preference</label>
          <div class="field-body">
              <div class="field is-narrow">
                  <div class="control">
                      <label class="radio">
                          <input type="radio" name="ContactPreference" value="Call" v-model="Info.Preference">
                          Call
                      </label>
                      <label class="radio">
                          <input type="radio" name="ContactPreference" value="Text" v-model="Info.Preference">
                          Text
                      </label>
                  </div>
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">Service(s) Needed</label>
          <div class="field-body">
              <div class="field is-narrow">
                  <div class="control">
                      <input type="checkbox" name="Service(s) Needed" id="pruning" value="Tree Pruning & Removal" v-model="Info.Services">
                      <label for="pruning">Tree Pruning & Removal</label><br>
                      <input type="checkbox" name="Service(s) Needed" id="stump" value="Stump Grinding" v-model="Info.Services">
                      <label for="stump">Stump Grinding</label><br>
                      <input type="checkbox" name="Service(s) Needed" id="firewood" value="Firewood" v-model="Info.Services">
                      <label for="firewood">Firewood</label><br>
                      <input type="checkbox" name="Service(s) Needed" id="storm" value="Storm Damage" v-model="Info.Services">
                      <label for="storm">Storm Damage</label><br>
                      <input type="checkbox" name="Service(s) Needed" id="leaf" value="Leaf Cleanups" v-model="Info.Services">
                      <label for="leaf">Leaf Cleanups</label>
                  </div>
              </div>
          </div>
      </div>

      <div class="field">
          <label class="label">How did you hear about us?</label>
          <div class="field-body">
              <div class="field is-narrow">
                  <div class="control">
                      <input type="checkbox" name="How did you hear about us?" id="internet" value="Internet Search" v-model="Info.HeardAbout">
                      <label for="internet">Internet Search</label><br>
                      <input type="checkbox" name="How did you hear about us?" id="facebook" value="Facebook" v-model="Info.HeardAbout">
                      <label for="facebook">Facebook</label><br>
                      <input type="checkbox" name="How did you hear about us?" id="friend" value="Friend" v-model="Info.HeardAbout">
                      <label for="friend">Friend</label><br>
                      <input type="checkbox" name="How did you hear about us?" id="other" value="Other" v-model="Info.HeardAbout">
                      <label for="other">Other</label>
                  </div>
              </div>
          </div>
      </div>
      <p v-if="Error">{{ Error }}</p>
      <div class="field">
          <div class="field-label">
              <!-- Left empty for spacing -->
          </div>
          <div class="control">
              <!-- <button class="button" type="submit" @click="submitForm">
                  Submit
              </button> -->
              <input type="submit" class="button">
          </div>
      </div>
  </form>
</template>

<script>
import ContactService from '@/services/ContactService.js'

export default {

  data() {
      return {
          Info: {
              Name: {
                  First: "",
                  Last: ""
              },
              Address: {
                  Line1: "",
                  Line2: "",
                  City: "",
                  State: "",
                  ZipCode: "",
                  Country: ""
              },
              Email: "",
              Phone: "",
              Comments: "",
              Preference: "",
              Services: [],
              HeardAbout: []
          },
          Error: ""
      }
  },
  methods: {
      checkForm: function(e){
          if(this.Info.Name && this.Info.Address && this.Info.Phone && this.Info.Preference && this.Info.Services.length){
            //   return true;
              return this.submitForm();
          }

          if(!this.Info.Name || !this.Info.Address || !this.Info.Phone || !this.Info.Preference || !this.Info.Services.length){
              this.Error="Please fill out all required elements"
          }
          
          e.preventDefault();
      },
      submitForm() {
          ContactService.formSubmit(this.Info)
        // document.getElementById("contactForm").method = "post"
        // document.getElementById("contactForm").action = "mailto: jleya95@gmail.com"

      }
  }
};
</script>

<style>
.button{
  background-color: rgb(138, 189, 157);
}
.button:hover{
  background-color: orange;
}
</style>

  <!-- <form class="form">
      <div class="field">
          <label class="label">Name</label>
          <div class="formbox">
              <input class="forminput" type="text" placeholder="First">
          </div>
          <div class="formbox">
              <input class="forminput" type="text" placeholder="Last">
          </div>
      </div>
      <div class="field">
          <label class="label">Address</label>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="Line 1">
          </div>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="Line 2">
          </div>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="City">
          </div>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="State">
          </div>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="Zip Code">
          </div>
          <div class="formbox">
              <input type="text" class="forminput" placeholder="County">
          </div>
      </div>
      <div class="field">
          <label class="label">Phone Number</label>
          <input type="text" class="forminput">
      </div>
      <div class="field">
          <label class="label">Comments</label>
          <input type="text">
      </div>
      <div class="field">
          <label class="label">Email</label>
          <input type="text">
      </div>
      <div class="field">
          <label class="label">Contact Preference</label>
          <input type="radio" id="call" name="contact_preference" value="Call">
          <label for="call">Call</label><br>
          <input type="radio" id="text" name="contact_preference" value="Text">
          <label for="text">Text</label>
      </div>
      <div class="field">
          <label class="label">Service(s) Needed</label>
          <input type="checkbox" id="pruning" value="Tree Pruning & Removal">
          <label for="pruning">Tree Pruning & Removal</label><br>
          <input type="checkbox" id="stump" value="Stump Grinding">
          <label for="stump">Stump Grinding</label><br>
          <input type="checkbox" id="firewood" value="Firewood">
          <label for="firewood">Firewood</label><br>
          <input type="checkbox" id="storm" value="Storm Damage">
          <label for="storm">Storm Damage</label><br>
          <input type="checkbox" id="leaf" value="Leaf Cleanups">
          <label for="leaf">Leaf Cleanups</label>
      </div>
      <div class="field">
          <label class="label">How did you hear about us?</label>
          <input type="checkbox" id="internet" value="Internet Search">
          <label for="internet">Internet Search</label><br>
          <input type="checkbox" id="facebook" value="Facebook">
          <label for="facebook">Facebook</label><br>
          <input type="checkbox" id="friend" value="Friend">
          <label for="friend">Friend</label><br>
          <input type="checkbox" id="other" value="Other">
          <label for="other">Other</label>
      </div>
      <div class="field">
          <input type="submit" class="forminput" value="Submit">
      </div>
  </form> -->
