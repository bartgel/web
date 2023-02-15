import {OBSIDIAN_CV_SKILL_MAP} from '../constants.js'
import BaseReader from './baseReader.js'

export default class SkillReader extends BaseReader {
    getSync = () => OBSIDIAN_CV_SKILL_MAP;

    metadataContentSwich = (metadata,content) => content
}