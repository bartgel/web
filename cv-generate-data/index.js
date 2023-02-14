import TranslationReader from './readers/translationReader.js'
import PersonalReader from './readers/personalReader.js';
import XmlWriter from './xml/xmlCreator.js';
import fs from 'fs'
import JobReader from './readers/jobReader.js';

const translationReader = new TranslationReader();
const personalReader = new PersonalReader();
const jobReader = new JobReader();

var translation = translationReader.readAllTranslations()
var personal = personalReader.readAllPersonal();
var jobs = jobReader.readAllJobs();

var xmlWriter = new XmlWriter();

console.log(jobs)

const xml =  xmlWriter.writeTag('translations',  xmlWriter.readProperty(translation),null)
 + xmlWriter.writeTag('jobs',xmlWriter.writeJob(jobs),null )
 + fs.readFileSync('dummy/xml-part-2.txt', 'utf8')
 + xmlWriter.readProperty(personal)
 + fs.readFileSync('dummy/xml-part-3.txt', 'utf8')


 fs.writeFileSync('../cv-compiler/src/main/resources/data/cv.xml', xmlWriter.writeTag('cv',xml,null))
