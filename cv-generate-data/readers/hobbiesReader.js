import {OBSIDIAN_CV_HOBBY_MAP} from '../constants.js'
import BaseReader from './baseReader.js'

export default class HobbyReader extends BaseReader { 
    getSync = () => OBSIDIAN_CV_HOBBY_MAP;
}