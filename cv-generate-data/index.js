import TranslationReader from './readers/translationReader.js'
import PersonalReader from './readers/personalReader.js';
import XmlWriter from './xml/xmlCreator.js';
import fs from 'fs'
import JobReader from './readers/jobReader.js';
import SkillReader from './readers/skillReader.js';
import LanguageReader from './readers/languageReader.js';
import EducationReader from './readers/educationReader.js';

const translationReader = new TranslationReader();
const personalReader = new PersonalReader();
const jobReader = new JobReader();
const skillReader = new SkillReader();
const languageReader = new LanguageReader();
const educationReader = new EducationReader()


var translation = translationReader.readAllTranslations()
var personal = personalReader.readAllPersonal();
var jobs = jobReader.readAllJobs();
var skills = skillReader.readAllSkills();
var languages = languageReader.readAllLanguages();
var educations = educationReader.readAllEducations();

var xmlWriter = new XmlWriter();

console.log('**** START WRITE ****')


const xml =  xmlWriter.writeTag('translations',  xmlWriter.readProperty(translation),null)
 + xmlWriter.writeTag('jobs',xmlWriter.writeJob(jobs),null )
 + xmlWriter.writeTag('skills', xmlWriter.writeXmlTags(skills),null)
 + xmlWriter.writeTag('languages', xmlWriter.readPropertyWrapped(languages, 'language', 'name'),null)
 + xmlWriter.writeTag('educations', xmlWriter.readPropertyWrapped(educations, 'education', 'name'),null)
 + fs.readFileSync('dummy/xml-part-2.txt', 'utf8')
 + xmlWriter.readProperty(personal)
 + fs.readFileSync('dummy/xml-part-3.txt', 'utf8')

 fs.writeFileSync('../cv-compiler/src/main/resources/data/cv.xml', xmlWriter.writeTag('cv',xml,null))

 console.log('**** END WRITE ****')
