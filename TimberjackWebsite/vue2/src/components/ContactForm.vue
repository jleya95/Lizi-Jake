<template>
    <div class="center-form">
        <form class="Form" id="ContactForm" method="POST" action="https://formsubmit.co/57a97cd2daec8f5142e6d74ebebe82c0">
            <h1 class="form-h1">WANT US TO CONTACT YOU?</h1>
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
                <label class="label">Email</label>
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
                <label class="label">Phone Number</label>
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
                        </div>
                    </div>
                </div>
            </div>

            <div class="field">
                <label class="label">Service(s) Needed</label>
                <div class="field-body">
                    <div class="field is-narrow">
                        <div class="control">
                            <input type="radio" name="Service(s) Needed" id="risk" value="Tree Risk Assessment"
                                v-model="Info.Services">
                            <label for="pruning">Tree Risk Assessment</label><br>
                            <input type="radio" name="Service(s) Needed" id="pruning" value="Tree Pruning & Removal"
                                v-model="Info.Services">
                            <label for="pruning">Tree Pruning & Removal</label><br>
                            <input type="radio" name="Service(s) Needed" id="land" value="Land & Lot Clearing"
                                v-model="Info.Services">
                            <label for="storm">Land & Lot Clearing</label><br>
                            <input type="radio" name="Service(s) Needed" id="stump" value="Stump Grinding"
                                v-model="Info.Services">
                            <label for="stump">Stump Grinding</label><br>
                            <input type="radio" name="Service(s) Needed" id="firewood" value="Firewood"
                                v-model="Info.Services">
                            <label for="firewood">Firewood</label><br>
                            <input type="radio" name="Service(s) Needed" id="leaf" value="Leaf Cleanups"
                                v-model="Info.Services">
                            <label for="leaf">Leaf Cleanups</label><br>
                            <input type="radio" name="Service(s) Needed" id="truck" value="Bucket Truck & Crane Service"
                                v-model="Info.Services">
                            <label for="leaf">Bucket Truck & Crane Service</label>
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
                            <input type="radio" name="How did you hear about us?" id="facebook" value="Facebook"
                                v-model="Info.HeardAbout">
                            <label for="facebook">Facebook</label><br>
                            <input type="radio" name="How did you hear about us?" id="friend" value="Friend"
                                v-model="Info.HeardAbout">
                            <label for="friend">Friend</label><br>
                            <input type="radio" name="How did you hear about us?" id="other" value="Other"
                                v-model="Info.HeardAbout">
                            <label for="other">Other</label>
                        </div>
                    </div>
                </div>
            </div>
            <p v-if="Error">{{ Error }}</p>
            <div class="field">
                <div class="field-label">
                </div>
                <div class="control">
                    <input type="submit" class="button">
                </div>
            </div>
        </form>
        <div class="form-image">
            <img src="img/formpic.jpg" alt="Image">
        </div>
    </div>
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
                Services: "",
                HeardAbout: ""
            },
            Error: ""
        }
    },
    methods: {
        checkForm: function (e) {
            if (this.Info.Name && this.Info.Address && this.Info.Phone && this.Info.Preference && this.Info.Services.length) {
                return this.submitForm();
            }

            if (!this.Info.Name || !this.Info.Address || !this.Info.Phone || !this.Info.Preference || !this.Info.Services.length) {
                this.Error = "Please fill out all required elements"
            }

            e.preventDefault();
        },
        submitForm() {
            ContactService.formSubmit(this.Info)
        }
    }
};
</script>

<style>
.button {
    background-color: rgb(138, 189, 157);
}

.button:hover {
    background-color: orange;
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
</style>
