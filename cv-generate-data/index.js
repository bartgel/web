import TranslationReader from './readers/translationReader.js'
import PersonalReader from './readers/personalReader.js';
import XmlWriter from './xml/xmlCreator.js';
import fs from 'fs'
import JobReader from './readers/jobReader.js';
import LanguageReader from './readers/languageReader.js';
import EducationReader from './readers/educationReader.js';
import HobbyReader from './readers/hobbiesReader.js';
import ValuesReader from './readers/mainValueReader.js';
import TopSkillsReader from './readers/topskillReader.js';
import CvReader from './readers/CvReader.js';

const translationReader = new TranslationReader();
const personalReader = new PersonalReader();
const jobReader = new JobReader();
const languageReader = new LanguageReader();
const educationReader = new EducationReader()
const hobbyReader = new HobbyReader();
const valuesReader = new ValuesReader();
const topSkillsReader = new TopSkillsReader();

const cvReader = new CvReader();

cvReader.readAll();


var translation = translationReader.readAllTranslations()
var personal = personalReader.readAll();
var jobs = jobReader.readAll();
var languages = languageReader.readAll();
var educations = educationReader.readAll();
var hobbies = hobbyReader.readAll();
var values = valuesReader.readAll();
var topSkills = topSkillsReader.readAll();

var skills2 = cvReader.readAll();


var xmlWriter = new XmlWriter();

console.log('**** START WRITE ****')

const xml =  xmlWriter.writeTag('translations',  xmlWriter.readProperty(translation),null)
 + xmlWriter.writeTag('jobs',xmlWriter.writeJob(jobs),null )
 + xmlWriter.writeTag('skills', xmlWriter.readPropertyList(skills2, 'skill'),null)
 + xmlWriter.writeTag('languages', xmlWriter.readPropertyWrapped(languages, 'language', 'name'),null)
 + xmlWriter.writeTag('educations', xmlWriter.readPropertyWrapped(educations, 'education', 'name'),null)
 + xmlWriter.writeTag('topSkills', xmlWriter.readPropertyWrapped(topSkills, 'skill', 'name'),null)
 + xmlWriter.writeTag('mainValues', xmlWriter.readPropertyWrapped(values, 'value', 'name'), null)
 + xmlWriter.writeTag('personal', xmlWriter.readProperty(personal),null)
 + xmlWriter.writeTag('hobbies', xmlWriter.readPropertyWrapped(hobbies, 'hobby', 'name'),null)

 fs.writeFileSync('../cv-compiler/src/main/resources/data/cv.xml', xmlWriter.writeTag('cv',xml,null))


 console.log('**** END WRITE ****')
