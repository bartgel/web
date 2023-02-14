
import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_JOB_MAP} from '../constants.js'

export default class JobReader {
    jobs = {}
    
    readJob = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_JOB_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)
        this.jobs[tagname] = content;

    }


    readAllJobs () {
        this.jobs = {}
        console.log(OBSIDIAN_CV_JOB_MAP)
        fs.readdirSync(OBSIDIAN_CV_JOB_MAP).forEach(this.readJob);
        return this.jobs
    }
}