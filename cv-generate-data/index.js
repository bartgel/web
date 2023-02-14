import TranslationReader from './readers/translationReader.js'
import PersonalReader from './readers/personalReader.js';
import XmlWriter from './xml/xmlCreator.js';
import fs from 'fs'

const translationReader = new TranslationReader();
const personalReader = new PersonalReader();

var translation = translationReader.readAllTranslations()
var personal = personalReader.readAllPersonal();

var xmlWriter = new XmlWriter();

const xml = fs.readFileSync('dummy/xml-part-1.txt', 'utf8')
 + xmlWriter.readProperty(translation)
 + fs.readFileSync('dummy/xml-part-2.txt', 'utf8')
 + xmlWriter.readProperty(personal)
 + fs.readFileSync('dummy/xml-part-3.txt', 'utf8')


 fs.writeFileSync('../cv-compiler/src/main/resources/data/cv.xml', xml)
