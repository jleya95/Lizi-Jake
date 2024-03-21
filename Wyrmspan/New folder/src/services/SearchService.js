import axios from "axios";

export default{
    searchDragon(Search){
        return axios.get(`https://dragonapp2.azurewebsites.net/Dragon/search?q=${Search}`)
    }
}