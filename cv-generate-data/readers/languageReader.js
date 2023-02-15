import {OBSIDIAN_CV_LANGUAGE_MAP} from '../constants.js'
import BaseReader from './baseReader.js'


export default class LanguageReader  extends BaseReader  {
    getSync = () => OBSIDIAN_CV_LANGUAGE_MAP;
}