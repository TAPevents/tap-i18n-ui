# only show if TAPi18n is enabled
UI.registerHelper 'i18n_enabled', -> TAPi18n.conf?

# transform getLanguages into ordered array
UI.registerHelper 'i18n_sortedLanguages' , ->
  langauges = TAPi18n.getLanguages()
  # map language tag into the object
  for key,val of langauges
    langauges[key].tag = key
  # return array sorted alphabetically by tag
  _.sortBy _.values langauges, (language) -> language.tag

# check if language option is current language
UI.registerHelper 'i18n_isCurrentLanguage' , (tag) -> tag is TAPi18n.getLanguage()

# find and decorate current language
UI.registerHelper 'i18n_currentLanguage' , ->
  currentLanguage = TAPi18n.getLanguages()?[TAPi18n.getLanguage()]
  currentLanguage.tag = TAPi18n.getLanguage()
  return currentLanguage

# add language change event, to be redefined in project if needed
TAPi18n.afterUILanguageChange = -> null