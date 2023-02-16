import TranslationReader from './readers/translationReader.js'
import PersonalReader from './readers/personalReader.js';
import XmlWriter from './xml/xmlCreator.js';
import fs from 'fs'
import JobReader from './readers/jobReader.js';
import SkillReader from './readers/skillReader.js';
import LanguageReader from './readers/languageReader.js';
import EducationReader from './readers/educationReader.js';
import HobbyReader from './readers/hobbiesReader.js';
import ValuesReader from './readers/mainValueReader.js';

const translationReader = new TranslationReader();
const personalReader = new PersonalReader();
const jobReader = new JobReader();
const skillReader = new SkillReader();
const languageReader = new LanguageReader();
const educationReader = new EducationReader()
const hobbyReader = new HobbyReader();
const valuesReader = new ValuesReader();


var translation = translationReader.readAllTranslations()
var personal = personalReader.readAll();
var jobs = jobReader.readAll();
var skills = skillReader.readAll();
var languages = languageReader.readAll();
var educations = educationReader.readAll();
var hobbies = hobbyReader.readAll();
var values = valuesReader.readAll();


var xmlWriter = new XmlWriter();

console.log('**** START WRITE ****')


const xml =  xmlWriter.writeTag('translations',  xmlWriter.readProperty(translation),null)
 + xmlWriter.writeTag('jobs',xmlWriter.writeJob(jobs),null )
 + xmlWriter.writeTag('skills', xmlWriter.writeXmlTags(skills),null)
 + xmlWriter.writeTag('languages', xmlWriter.readPropertyWrapped(languages, 'language', 'name'),null)
 + xmlWriter.writeTag('educations', xmlWriter.readPropertyWrapped(educations, 'education', 'name'),null)
 + fs.readFileSync('dummy/xml-part-2.txt', 'utf8')
 + xmlWriter.writeTag('mainValues', xmlWriter.readPropertyWrapped(values, 'value', 'name'), null)
 + xmlWriter.writeTag('personal', xmlWriter.readProperty(personal),null)
 + xmlWriter.writeTag('hobbies', xmlWriter.readPropertyWrapped(hobbies, 'hobby', 'name'),null)

 fs.writeFileSync('../cv-compiler/src/main/resources/data/cv.xml', xmlWriter.writeTag('cv',xml,null))

 console.log('**** END WRITE ****')
