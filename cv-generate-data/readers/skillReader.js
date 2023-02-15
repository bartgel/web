
import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_SKILL_MAP} from '../constants.js'

export default class SkillReader {
    skill = {}
    
    readJob = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_SKILL_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)
        this.skill[tagname] = content;
    }


    readAllSkills () {
        this.skill = {}
        fs.readdirSync(OBSIDIAN_CV_SKILL_MAP).forEach(this.readJob);
        return this.skill
    }
}