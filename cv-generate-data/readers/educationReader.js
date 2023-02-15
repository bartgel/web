
import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_EDUCATION_MAP} from '../constants.js'

export default class EducationReader {
    jobs = {}
    
    readEducation = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_EDUCATION_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)
        this.jobs[tagname] = metadata;
    }

    readAllEducations () {
        this.jobs = {}
        fs.readdirSync(OBSIDIAN_CV_EDUCATION_MAP).forEach(this.readEducation);
        return this.jobs
    }
}