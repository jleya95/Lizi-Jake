<template>
    <div class="center-form">
        <!-- <form class="Form" id="ContactForm" method="POST" action="https://formsubmit.co/57a97cd2daec8f5142e6d74ebebe82c0"> -->
        <form class="Form" id="ContactForm">
            <h1 class="form-h1">WANT US TO CONTACT YOU?</h1>
            <div class="field">
                <label class="label">Name<span class="required">*</span></label>
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
                <div class="field">
                    <div class="field-body is-grouped">
                        <p class="field is-expanded">
                            <input class="input" name="AddressLine1" type="text" placeholder="Line 1"
                                v-model="Info.Address.Line1">
                        </p>
                    </div>
                    <div class="field-body">
                        <p class="field is-expanded">
                            <input class="input" name="AddressLine2" type="text" placeholder="Line 2"
                                v-model="Info.Address.Line2">
                        </p>
                    </div>
                    <div class="field-body is-grouped">
                        <div class="field is-expanded">
                            <p class="control is-expanded">
                                <input class="input" name="City" type="text" placeholder="City" v-model="Info.Address.City">
                            </p>
                        </div>
                        <div class="field is-grounded">
                            <p class="control is-expanded">
                                <input class="input" name="State" type="text" placeholder="State"
                                    v-model="Info.Address.State">
                            </p>
                        </div>
                    </div>
                    <div class="field-body is-grouped">
                        <div class="field is-grounded">
                            <p class="control is-expanded">
                                <input class="input" name="ZipCode" type="text" placeholder="Zip Code"
                                    v-model="Info.Address.ZipCode">
                            </p>
                        </div>
                        <div class="field is-grounded">
                            <p class="control is-expanded">
                                <input class="input" name="Country" type="text" placeholder="Country"
                                    v-model="Info.Address.Country">
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="field">
                <label class="label">Email<span class="required">*</span></label>
                <div class="field is-expanded">
                    <p class="control is-expanded has-icons-left">
                        <input class="input is-success" name="email" type="email" placeholder="address@email.com"
                            v-model="Info.Email">
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>
                    </p>
                </div>
            </div>

            <div class="field is-expanded">
                <label class="label">Phone Number<span class="required">*</span></label>
                <div class="field">
                    <div class="field">
                        <div class="field has-addons">
                            <p class="control">
                                <a class="button is-static">
                                    +1
                                </a>
                            </p>
                            <p class="control is-expanded">
                                <input class="input" name="PhoneNumber" type="tel" placeholder="Your phone number"
                                    v-model="Info.Phone">
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="field">
                <label class="label">Comment(s)</label>
                <div class="control">
                    <textarea class="textarea" placeholder="Comment(s)" v-model="Info.Comments"></textarea>
                </div>
            </div>

            <div class="field is-expanded">
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
                            <label class="radio">
                                <input type="radio" name="ContactPreference" value="Email" v-model="Info.Preference">
                                Email
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="field">
                <label class="label">Service Needed<span class="required">*</span></label>
                <div class="field-body">
                    <div class="field is-narrow">
                        <div class="control">
                            <input type="radio" name="Service Needed" id="risk" value="Tree Risk Assessment"
                                v-model="Info.Services">
                            <label for="risk">Tree Risk Assessment</label><br>
                            <input type="radio" name="Service Needed" id="pruning" value="Tree Pruning and Removal"
                                v-model="Info.Services">
                            <label for="pruning">Tree Pruning & Removal</label><br>
                            <input type="radio" name="Service Needed" id="land" value="Land and Lot Clearing"
                                v-model="Info.Services">
                            <label for="land">Land & Lot Clearing</label><br>
                            <input type="radio" name="Service Needed" id="stump" value="Stump Grinding"
                                v-model="Info.Services">
                            <label for="stump">Stump Grinding</label><br>
                            <input type="radio" name="Service Needed" id="firewood" value="Firewood"
                                v-model="Info.Services">
                            <label for="firewood">Firewood</label><br>
                            <input type="radio" name="Service Needed" id="leaf" value="Leaf Cleanups"
                                v-model="Info.Services">
                            <label for="leaf">Leaf Cleanups</label><br>
                            <input type="radio" name="Service Needed" id="truck" value="Bucket Truck and Crane Service"
                                v-model="Info.Services">
                            <label for="truck">Bucket Truck & Crane Service</label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="field">
                <label class="label">How did you hear about us?</label>
                <div class="field-body">
                    <div class="field is-narrow">
                        <div class="control">
                            <input type="radio" name="How did you hear about us?" id="internet" value="Internet Search"
                                v-model="Info.HeardAbout">
                            <label for="internet">Internet Search</label><br>
                            <input type="radio" name="How did you hear about us?" id="social" value="Social Media"
                                v-model="Info.HeardAbout">
                            <label for="social">Social Media</label><br>
                            <input type="radio" name="How did you hear about us?" id="billboard" value="Billboard"
                                v-model="Info.HeardAbout">
                            <label for="billboard">Billboard</label><br>
                            <input type="radio" name="How did you hear about us?" id="referral" value="Referral"
                                v-model="Info.HeardAbout">
                            <label for="referral">Referral</label><br>
                            <input type="radio" name="How did you hear about us?" id="other" value="Other"
                                v-model="Info.HeardAbout">
                            <label for="other">Other</label>
                        </div>
                    </div>
                </div>
            </div>
            <p class="error-message-home" v-if="FormError">{{ ErrorMessage }}</p>
            <div class="field">
                <div class="field-label">
                </div>
                <div class="control">
                    <!-- <input type="submit" class="button" @click="submitForm()"> -->
                    <input type="submit" class="button" @click="checkForm">
                </div>
            </div>
        </form>
        <div class="form-image">
            <img src="img/formpic.jpg" alt="Image">
        </div>
    </div>
    <div v-if="showPopUp" class="popup">
        <form-popup-component></form-popup-component>
    </div>
</template>

<script>
import ContactService from '@/services/ContactService.js';
import FormPopupComponent from '@/components/FormPopupComponent.vue'

export default {
    components: {
        FormPopupComponent
    },
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
                Services: "",
                HeardAbout: ""
            },
            FormError: false,
            ErrorMessage: "",
            showPopUp: false
        }
    },
    methods: {
        checkForm: function (e) {
            if (this.Info.Name.First && this.Info.Email && this.Info.Phone && this.Info.Services) {
                this.replaceEntersInComments(e);
                return this.submitForm(e);
            }

            if (!this.Info.Name.First || !this.Info.Email || !this.Info.Phone || !this.Info.Services) {
                this.FormError = true
                this.ErrorMessage = "Please fill out all required(*) elements"
            }

            e.preventDefault();
        },
        submitForm(e) {
            e.preventDefault();
            ContactService.formSubmit(this.Info)
                .then((response) => {
                    if (response.status === 200) {
                        return this.displayPopUp(e);
                    }
                })
                .catch((error) => {
                    this.handleErrorResponse(error, "Form Submit")
                })
        },
        displayPopUp(e) {
            this.showPopUp = true;
        },
        handleErrorResponse(error, verb) {
            if (error.response) {
                console.log(
                    `Error ${verb} topic. Response received was "${error.response.statusText}".`
                );
            } else if (error.request) {
                console.log(`Error ${verb} topic. Server could not be reached.`);
            } else {
                console.log(`Error ${verb} topic. Request could not be created.`);
            }
        },
        replaceEntersInComments(e) {
            this.Info.Comments = this.Info.Comments.replaceAll(/\n/g, "   ");
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

.center-form {
    display: flex;
    justify-content: left;
    align-items: center;
    align-content: center;
    margin-top: 7%;
    margin-bottom: 7%;
    margin-left: 7%;

}

.form-h1 {
    font-size: 130%;
    font-weight: bold;
    margin-bottom: 3%;
}

.form-image {
    width: 60%;
    margin: 5%;
}

img {
    border-radius: 5%;
}

.required,
.error-message-home {
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


@media screen and (max-width: 1024px) {

    .center-form {
        display: flex;
        justify-content: center;
        align-items: center;
        align-content: center;
        margin-top: 20%;
        margin-bottom: 7%;
        margin-left: 7%;
        text-align: left;

    }

    .form-image {
        border-radius: 5%;
        width: 0%;
    }

    .control {
        font-size: 120%;
    }
}
</style>
