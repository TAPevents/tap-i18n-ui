# Add amplify helper to TAPi18n
TAPi18n.setLanguageAmplify = (language) ->
  amplify.store 'tap-i18n-language', language
  TAPi18n.setLanguage language

# set the language on startup if it's already been set
Meteor.startup ->
  storedLanguage = amplify.store 'tap-i18n-language'
  if storedLanguage
    TAPi18n.setLanguage storedLanguage