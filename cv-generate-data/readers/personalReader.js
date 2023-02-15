import {OBSIDIAN_CV_PERSONAL_MAP} from '../constants.js'
import BaseReader from './baseReader.js'


export default class PersonalReader  extends BaseReader  {
    getSync = () => OBSIDIAN_CV_PERSONAL_MAP;
}