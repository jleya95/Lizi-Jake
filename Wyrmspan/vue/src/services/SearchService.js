import axios from "axios";

export default{
    searchDragon(Search){
        return axios.get(`Dragon/search?q=${Search}`)
    }
}