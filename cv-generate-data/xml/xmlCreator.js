export default class XmlWriter {

    SPECIAL_TAGS = ['short', 'type']
    LANGS = ['Nl', 'Fr', 'En', 'Es']

    writeTag = (property,value,lang) => {
        var additions = (lang == null ? ''  :  ' lang="' + lang + '"')
        return '<' + property + additions +'>' +  value + '</' + property + '>\n'
    }
    
 
    jobTransformer = (job) => {
       let result = this.writeTag ('from',  job.from, null);
       result += this.writeTag ('to',  job.to, null);
       result += this.writeTag ('logo', job.companyObj.logo)

       result += this.writeTag('title', job.functionObj.nl,'nl')
       result += this.writeTag('title', job.functionObj.fr,'fr')
       result += this.writeTag('title', job.functionObj.en,'en')
       result += this.writeTag('title', job.functionObj.es,'es')

       result += this.writeTag('taskDescription', job.nl,'nl')
       result += this.writeTag('taskDescription', job.fr,'fr')
       result += this.writeTag('taskDescription', job.en,'en')
       result += this.writeTag('taskDescription', job.es,'es')

       if (job.clientObj != undefined) {
        result += this.writeTag ('logo2', job.clientObj.logo)

        result += this.writeTag('location', job.clientObj.locationNl,'nl')
        result += this.writeTag('location', job.clientObj.locationFr,'fr')
        result += this.writeTag('location', job.clientObj.locationEn,'en')
        result += this.writeTag('location', job.clientObj.locationEs,'es')

        result += this.writeTag('companyDescription', job.clientObj.companyNl,'nl')
        result += this.writeTag('companyDescription', job.clientObj.companyFr,'fr')
        result += this.writeTag('companyDescription', job.clientObj.companyEn,'en')
        result += this.writeTag('companyDescription', job.clientObj.companyEs,'es')

       } else {

        result += this.writeTag('location', job.companyObj.locationNl,'nl')
        result += this.writeTag('location', job.companyObj.locationFr,'fr')
        result += this.writeTag('location', job.companyObj.locationEn,'en')
        result += this.writeTag('location', job.companyObj.locationEs,'es')

        result += this.writeTag('companyDescription', job.companyObj.companyNl,'nl')
        result += this.writeTag('companyDescription', job.companyObj.companyFr,'fr')
        result += this.writeTag('companyDescription', job.companyObj.companyEn,'en')
        result += this.writeTag('companyDescription', job.companyObj.companyEs,'es')

       }

       result += job.skillsXML
       return result
    }

    writeJobs = (jobs) => {
        let result = ''
        for (let job in jobs) {
            result = this.writeTag('job', this.jobTransformer(jobs[job]), null ) + result
        }
        return result;
    }
    
    processProperty = (propertyname, propertyValue) => {
        let xmlData = ''
        if (propertyValue.nl != undefined) {
            xmlData += this.writeTag (propertyname,  propertyValue.nl, 'nl');
            xmlData += this.writeTag (propertyname,  propertyValue.fr, 'fr');
            xmlData += this.writeTag (propertyname,  propertyValue.en, 'en');
            xmlData += this.writeTag (propertyname,  propertyValue.es, 'es');

            if (propertyValue.niveau != undefined) {
                xmlData += this.writeTag ('niveau',  propertyValue.niveau, null);
            }

            for (var specialTag in this.SPECIAL_TAGS) {
                for (var lang in this.LANGS) {
                    let specialPropertyName = `${this.SPECIAL_TAGS[specialTag]}${this.LANGS[lang]}`
                    if (propertyValue[specialPropertyName] != undefined) {
                        xmlData += this.writeTag
                                        ( this.SPECIAL_TAGS[specialTag]
                                        , propertyValue[specialPropertyName]
                                        , this.LANGS[lang].toLowerCase());
                    }
                }
            }

            if (propertyValue.level != undefined) {
                xmlData += this.writeTag('level', propertyValue.level)
            }

            if (propertyValue.start != undefined && propertyValue.end != undefined) {
                xmlData += this.writeTag ('when',  'Van ' + propertyValue.start + ' tot ' + propertyValue.end , "nl");
                xmlData += this.writeTag ('when',  'De ' + propertyValue.start + ' à ' + propertyValue.end , "fr");
                xmlData += this.writeTag ('when',  'From ' + propertyValue.start + ' until ' + propertyValue.end , "en");
                xmlData += this.writeTag ('when',  'De ' + propertyValue.start + ' hasta ' + propertyValue.end , "es");
            }

            if (propertyValue.skills != undefined && Array.isArray(propertyValue.skills )) {
                xmlData += this.writeTag("skills", this.readPropertyList(propertyValue.skills,'skill'));
            }

        } else if (propertyValue.all != undefined) {
            xmlData += this.writeTag (propertyname, propertyValue.all, null)
        } else {
            // TODO Might cause issues
            if (propertyname == 'skills' && propertyValue['skill-level-1-star'] != undefined) {
                xmlData += this.writeTag(propertyname, this.readPropertyWrapped(propertyValue,'skill','level'));
            } else {
                xmlData += this.writeTag(propertyname, this.readPropertyWrapped(propertyValue,null,null));
            }
        }
        return xmlData;
    }


    readPropertyList = (propertyToRead, baseTag) => {
        let xmlData = ''
    
        for (var property in propertyToRead) {
            let propertyValue = propertyToRead[property]

            let myData = this.processProperty('name', propertyValue)
            if (baseTag != null) {
                myData = this.writeTag(baseTag, myData, null)
            }
            xmlData += myData

        }
        return xmlData;        
    }


    readPropertyWrapped = (propertyToRead, baseTag, detailTag) => {
        let xmlData = ''
    
        for (var property in propertyToRead) {
            let propertyValue = propertyToRead[property]
            let propertyname = (detailTag == null ? property : detailTag);

            let myData = this.processProperty(propertyname, propertyValue)
            if (baseTag != null) {
                myData = this.writeTag(baseTag, myData, null)
            }
            xmlData += myData

        }
        return xmlData;
    }

    readProperty = (propertyToRead) => {
        return this.readPropertyWrapped(propertyToRead,null,null)
    }


    /*writeJob (jobs) {
        let xmlData = ''
        for (var property in jobs) {
            xmlData = jobs[property] + xmlData
        }
        return xmlData
    }*/

    writeXmlTags (jobs) {
        let xmlData = ''
        for (var property in jobs) {
            xmlData += jobs[property] 
        }
        return xmlData
    }
}