import axios from "axios";

export default{
    getDragonByNumber(dragon_number) {
        return axios.get(`https://dragonapp2.azurewebsites.net/Dragon/${dragon_number}`)
    },
    getDragonByName(dragonName) {
        return axios.get(`https://dragonapp2.azurewebsites.net/Dragon/Name/${dragonName}`)
    },
    getDragonImgPath(dragon_number) {
        return axios.get(`https://dragonapp2.azurewebsites.net/Dragon/Number/${dragon_number}/img`)
    }
}