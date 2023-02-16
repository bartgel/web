const OBSIDIAN_BASE = '../obsidian'
const OBSIDIAN_CV = '10-cv'
const OBSIDIAN_TRANSLATIONS = 'translations'
const OBSIDIAN_PERSONAL = 'personal'
const OBSIDIAN_JOB = 'job'
const OBSIDIAN_SKILL = 'skills'
const OBSIDIAN_LANGUAGE = 'language'
const OBSIDIAN_EDUCATION = 'education'
const OBSIDIAN_HOBBIES = 'hobbies'
const OBSIDIAN_VALUES = 'values'
const OBSIDIAN_TOPSKILLS = 'topSkills'

let makeMap = (mapName) => `${OBSIDIAN_BASE}/${OBSIDIAN_CV}/${mapName}/`

const OBSIDIAN_CV_TRANSLATION_MAP = makeMap(OBSIDIAN_TRANSLATIONS)
export default OBSIDIAN_CV_TRANSLATION_MAP

export const OBSIDIAN_CV_PERSONAL_MAP = makeMap(OBSIDIAN_PERSONAL)
export const OBSIDIAN_CV_JOB_MAP = makeMap(OBSIDIAN_JOB )

export const OBSIDIAN_CV_SKILL_MAP = makeMap( OBSIDIAN_SKILL)
export const OBSIDIAN_CV_LANGUAGE_MAP = makeMap(OBSIDIAN_LANGUAGE)
export const OBSIDIAN_CV_EDUCATION_MAP = makeMap(OBSIDIAN_EDUCATION)

export const OBSIDIAN_CV_HOBBY_MAP = makeMap(OBSIDIAN_HOBBIES)
export const OBSIDIAN_CV_VALUES_MAP = makeMap(OBSIDIAN_VALUES)
export const OBSIDIAN_CV_TOPSKILLS_MAP = makeMap(OBSIDIAN_TOPSKILLS)

