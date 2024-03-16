import axios from 'axios';


export default {

    // formSubmitService(FormData) {
    //     {
    //         axios.defaults.headers.post['Content-Type'] = 'application/json';
    //         return axios.post('https://formsubmit.co/ajax/ce1e0e48a1c5a5c589191257a5a1d25c', FormData);
    //     }
    // },
    // formSubmit(FormData) {
    //     {
    //         axios.defaults.headers.post['Content-Type'] = 'application/json';
    //         return axios.post('https://formsubmit.co/ajax/57a97cd2daec8f5142e6d74ebebe82c0', FormData);
    //     }
    // }
    formSubmit(FormData) {
        return axios.get(`https://timberjacktreeserviceapi.azurewebsites.net/email?firstName=${FormData.Name.First}&lastName=${FormData.Name.Last}&addressLine1=${FormData.Address.Line1}&addressLine2=&city=${FormData.Address.City}&state=PA&zipCode=${FormData.Address.ZipCode}&country=${FormData.Address.Country}&email=${FormData.Email}&phone=${FormData.Phone}&comments=${FormData.Comments}&preference=${FormData.Preference}&service=${FormData.Services}&heardAbout=${FormData.HeardAbout}`)
    },

    contactUsFormSubmit(FormData) {
        return axios.get(`https://timberjacktreeserviceapi.azurewebsites.net/contact/send?Name=${FormData.Name}&email=${FormData.Email}&phone=${FormData.Phone}&subject=${FormData.Subject}&message=${FormData.Message}`)
    }
};