export default class XmlWriter {

    writeTag = (property,value,lang) => {
        var additions = (lang == null ? ''  :  ' lang="' + lang + '"')
        return '<' + property + additions +'>' +  value + '</' + property + '>\n'
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

            if (propertyValue.typeEn != undefined) {
                xmlData += this.writeTag ('type',  propertyValue.typeEn, "en");
            }
            if (propertyValue.typeFr != undefined) {
                xmlData += this.writeTag ('type',  propertyValue.typeFr, "fr");
            }
            if (propertyValue.typeEs != undefined) {
                xmlData += this.writeTag ('type',  propertyValue.typeEs, "es");
            }
            if (propertyValue.typeNl != undefined) {
                xmlData += this.writeTag ('type',  propertyValue.typeNl, "nl");
            }

            if (propertyValue.start != undefined && propertyValue.end != undefined) {
                xmlData += this.writeTag ('when',  'Van ' + propertyValue.start + ' tot ' + propertyValue.end , "nl");
                xmlData += this.writeTag ('when',  'De ' + propertyValue.start + ' à ' + propertyValue.end , "fr");
                xmlData += this.writeTag ('when',  'From ' + propertyValue.start + ' until ' + propertyValue.end , "en");
                xmlData += this.writeTag ('when',  'De ' + propertyValue.start + ' hasta ' + propertyValue.end , "es");
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


    writeJob (jobs) {
        let xmlData = ''
        for (var property in jobs) {
            xmlData = jobs[property] + xmlData
        }
        return xmlData
    }

    writeXmlTags (jobs) {
        let xmlData = ''
        for (var property in jobs) {
            xmlData += jobs[property] 
        }
        return xmlData
    }
}