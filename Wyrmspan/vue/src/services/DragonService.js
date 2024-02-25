import axios from "axios";

export default{
    getDragonByNumber(dragon_number) {
        return axios.get(`/Dragon/${dragon_number}`)
    },
    getDragonByName(dragonName) {
        return axios.get(`/Dragon/Name/${dragonName}`)
    }
}