import axios from "axios";

export default{
    getDragonByNumber(dragon_number) {
        return axios.get(`/Dragon/${dragon_number}`)
    },
    getDragonByName(dragonName) {
        return axios.get(`/Dragon/Name/${dragonName}`)
    },
    getDragonImgPath(dragon_number) {
        return axios.get(`/Dragon/Number/${dragon_number}/img`)
    }
}