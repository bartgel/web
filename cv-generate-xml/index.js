import fs from 'fs'
import parseMD from 'parse-md'

var translations = {}
fs.readdirSync('../obsidian/10-cv/translations/').forEach(file => {
    //handling error
    const fileContents = fs.readFileSync('../obsidian/10-cv/translations/' + file, 'utf8')
    const { metadata, content } = parseMD(fileContents)

    translations[file.substr(0, file.length - 3)] = metadata
});


console.log (translations);


