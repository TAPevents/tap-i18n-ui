# Add amplify helper to TAPi18n
TAPi18n.setLanguageAmplify = (language) ->
  amplify.store 'tap-i18n-language', language
  TAPi18n.setLanguage(language).always(TAPi18n._afterUILanguageChange)

# set the language on startup if it's already been set, otherwise set default
Meteor.startup ->
  storedLanguage = amplify.store 'tap-i18n-language'
  if storedLanguage
    TAPi18n.setLanguage storedLanguage
  else
    TAPi18n.setLanguageAmplify _.keys(TAPi18n.getLanguages())[0]
