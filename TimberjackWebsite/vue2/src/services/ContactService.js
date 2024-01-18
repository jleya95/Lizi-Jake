import axios from 'axios';


export default {

    // formSubmitService(FormData) {
    //     {
    //         axios.defaults.headers.post['Content-Type'] = 'application/json';
    //         return axios.post('https://formsubmit.co/ajax/ce1e0e48a1c5a5c589191257a5a1d25c', FormData);
    //     }
    // },
    formSubmit(FormData) {
        {
            axios.defaults.headers.post['Content-Type'] = 'application/json';
            return axios.post('https://formsubmit.co/ajax/57a97cd2daec8f5142e6d74ebebe82c0', FormData);
        }
    }
};