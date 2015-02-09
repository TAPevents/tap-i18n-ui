Template.i18n_dropdown_semantic.rendered = ->
  $('select.dropdown').dropdown()

Template.i18n_dropdown_semantic.events
  # set language to selected option's tag
  'change .tap-i18n-dropdown select' : (e) -> TAPi18n.setLanguageAmplify $(e.currentTarget).val()

Template.i18n_buttons_semantic.events
  # set language to context tag
  'click .tap-i18n-buttons button' : (e,tmpl) -> TAPi18n.setLanguageAmplify @tag
