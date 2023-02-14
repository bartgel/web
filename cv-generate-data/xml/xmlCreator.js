export default class XmlWriter {

    writeTag = (property,value,lang) => {
        var additions = (lang == null ? ''  :  ' lang="' + lang + '"')
        return '<' + property + additions +'>' +  value + '</' + property + '>\n'
    }
    
    
    readProperty = (propertyToRead) => {
        let xmlData = ''
    
        for (var property in propertyToRead) {
            let propertyValue = propertyToRead[property]
            let skillException = property.startsWith('skill-level-');
    
            let propertyname = skillException ? 'level' : property;
        
            if (skillException) {
                xmlData += '<skill>'
            }
            if (propertyValue.nl != undefined) {
                xmlData += this.writeTag (propertyname,  propertyValue.nl, 'nl');
                xmlData += this.writeTag (propertyname,  propertyValue.fr, 'fr');
                xmlData += this.writeTag (propertyname,  propertyValue.en, 'en');
                xmlData += this.writeTag (propertyname,  propertyValue.es, 'es');
            } else if (propertyValue.all != undefined) {
                xmlData += this.writeTag (propertyname, propertyValue.all, null)
            } else {
                xmlData += this.writeTag(propertyname, this.readProperty(propertyValue));
            }
            if (skillException) {
                xmlData += '</skill>'
            }
        }
        return xmlData;
    }
}