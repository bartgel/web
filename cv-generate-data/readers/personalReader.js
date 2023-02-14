
import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_PERSONAL_MAP} from '../constants.js'

export default class PersonalReader {
    personal = {}

    readPersonal = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_PERSONAL_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)
        this.personal[tagname] = metadata
    }


    readAllPersonal () {
        this.personal = {}
        fs.readdirSync(OBSIDIAN_CV_PERSONAL_MAP).forEach(this.readPersonal);
        return this.personal
    }
}