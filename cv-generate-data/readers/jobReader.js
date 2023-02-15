import {OBSIDIAN_CV_JOB_MAP} from '../constants.js'
import BaseReader from './baseReader.js'


export default class JobReader  extends BaseReader  {
    getSync = () => OBSIDIAN_CV_JOB_MAP;

    metadataContentSwich = (metadata,content) => content
}