# transform getLanguages into ordered array
sortedLanguages = ->
  langauges = TAPi18n.getLanguages()
  # map language tag into the object
  for key,val of langauges
    langauges[key].tag = key
  # return array sorted alphabetically by tag
  _.sortBy _.values langauges, (language) -> language.tag


Template.i18n_dropdown.events
  # set language to selected option's tag
  'change .tap-i18n-dropdown' : (e) -> TAPi18n.setLanguage $(e.currentTarget).val()

Template.i18n_dropdown.helpers
  # only show if TAPi18n is enabled
  'enabled' : -> TAPi18n.conf?

  # sorted language list with code and names
  'languages' : -> sortedLanguages()

  # check if language option is current language
  'isSelected' : -> @tag is TAPi18n.getLanguage()
