# transform getLanguages into ordered array
sortedLanguages = ->
  _.sortBy _.values TAPi18n.getLanguages(), (language) -> language.code


Template.i18n_dropdown.events
  # set language to selected option's tag
  'change .tap-i18n-dropdown' : (e) -> TAPi18n.setLanguage $(e.currentTarget).val()

Template.i18n_dropdown.helpers
  # sorted language list with code and names
  'languages' : -> sortedLanguages()

  # check if language option is current language
  'isSelected' : -> @tag is TAPi18n.getLanguage()
