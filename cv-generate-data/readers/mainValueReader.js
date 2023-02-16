import {OBSIDIAN_CV_VALUES_MAP} from '../constants.js'
import BaseReader from './baseReader.js'

export default class ValuesReader extends BaseReader { 
    getSync = () => OBSIDIAN_CV_VALUES_MAP;
}