import {OBSIDIAN_CV_EDUCATION_MAP} from '../constants.js'
import BaseReader from './baseReader.js'

export default class EducationReader extends BaseReader { 
    getSync = () => OBSIDIAN_CV_EDUCATION_MAP;
}