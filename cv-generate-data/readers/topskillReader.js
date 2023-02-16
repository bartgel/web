import {OBSIDIAN_CV_TOPSKILLS_MAP} from '../constants.js'
import BaseReader from './baseReader.js'

export default class TopSkillsReader extends BaseReader { 
    getSync = () => OBSIDIAN_CV_TOPSKILLS_MAP;
}