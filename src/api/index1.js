import axios from 'axios';
import {baseUrl,ncov,key} from './base'

// 抗击疫情接口
export function getncov(){
    return axios.get(baseUrl+ncov+'?key='+key.key)
}