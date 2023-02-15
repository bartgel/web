
import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_LANGUAGE_MAP} from '../constants.js'

export default class LanguageReader {
    language = {}
    
    readLanguage = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_LANGUAGE_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)
        this.language[tagname] = metadata;
    }


    readAllLanguages () {
        this.language = {}
        fs.readdirSync(OBSIDIAN_CV_LANGUAGE_MAP).forEach(this.readLanguage);
        return this.language
    }
}