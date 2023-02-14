
import fs from 'fs'
import parseMD from 'parse-md'

import OBSIDIAN_CV_TRANSLATION_MAP from './constants.js'

export default class TranslationReader {
    translations = {}
    skills = []

    readTranslationSkillLevel = (tagname,metadata) => {
        var level = tagname.replace('skill-level-','').replace('-star','')
        level = level -1
        this.skills[level] = metadata
    }

    readTranslationDefault = (tagname,metadata) => {
        this.translations[tagname] = metadata
    }

    readTranslation = (file) => {
        //handling error
        const fileContents = fs.readFileSync(OBSIDIAN_CV_TRANSLATION_MAP + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)

        const tagname = file.substr(0, file.length - 3)

        if (tagname.startsWith('skill-level-')) {
            this.readTranslationSkillLevel (tagname,metadata)         
        } else {
           this.readTranslationDefault (tagname,metadata)
        }
    }


    readAllTranslations () {
        this.translations = {}
        this.skills = []
        fs.readdirSync(OBSIDIAN_CV_TRANSLATION_MAP).forEach(this.readTranslation);
        this.translations.skills = this.skills;
        return this.translations
    }
}