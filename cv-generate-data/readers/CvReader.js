import fs from 'fs'
import parseMD from 'parse-md'

import {OBSIDIAN_CV_FINAL_STRUCTURE_MAP, LANGUAGES} from '../constants.js'

export default class CvReader {
    skills = {}
    skillGroup = {}


    getBaseDir = () => OBSIDIAN_CV_FINAL_STRUCTURE_MAP;

    metadataContentSwich = (metadata,content) => {return metadata;}

    readSingle = (file) => {
        //handling error
        const fileContents = fs.readFileSync(this.getBaseDir() + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)
        const tagname = file.substr(0, file.length - 3)
        let myMetadata = metadata;
        myMetadata.id = tagname;

        if (myMetadata.all != undefined) {
            for (var langid in LANGUAGES) {
                myMetadata[LANGUAGES[langid].toLocaleLowerCase()] = myMetadata.all
            }
        }

        if (myMetadata.Tag.includes("SkillGroup")) {
            this.skillGroup[tagname] = myMetadata
        } else if (myMetadata.Tag.includes("Skill")) {
            this.skills[tagname] = myMetadata
        }

    }

    readAll () {
        this.skills = {}
        this.skillGroup = {}
        fs.readdirSync(this.getBaseDir()).forEach(this.readSingle);

        var skillset = []

        for (var key in this.skillGroup) {
            var skillGroup = this.skillGroup[key];
            
            let skills = [];

            for (var referenceId in skillGroup.references) {
                var skill = this.skills[skillGroup.references[referenceId]]
                skills.push(skill)
            }
            skillGroup.skills = skills;

            skillset.push(skillGroup)
        }
        return skillset;
    }
}