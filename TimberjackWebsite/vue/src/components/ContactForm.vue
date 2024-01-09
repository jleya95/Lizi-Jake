<template>
    <form class="form">
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
    </form>
</template>

<script></script>