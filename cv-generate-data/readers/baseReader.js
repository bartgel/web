import fs from 'fs'
import parseMD from 'parse-md'

export default class BaseReader {
    items = {}
    
    getSync;

    metadataContentSwich = (metadata,content) => {return metadata;}

    readSingle = (file) => {
        //handling error
        const fileContents = fs.readFileSync(this.getSync() + file, 'utf8')
        const { metadata, content } = parseMD(fileContents)
        const tagname = file.substr(0, file.length - 3)
        this.items[tagname] = this.metadataContentSwich(metadata,content);
    }

    readAll () {
        this.items = {}
        fs.readdirSync(this.getSync()).forEach(this.readSingle);
        return this.items
    }
}