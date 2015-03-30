# tap-i18n-ui

## UI helpers for the [tap-i18n](https://github.com/TAPevents/tap-i18n) package

### Install

    $ meteor add tap:i18n-ui

### Additional Templates

To generate a series of select language buttons for [Bootstrap](http://getbootstrap.com/) or [Semantic UI](http://semantic-ui.com/):

    {{> i18n_buttons}}            // Bootstrap
    {{> i18n_buttons_semantic}}   // Semantic UI

To provide a dropdown `<select>` list of available languages:

    {{> i18n_dropdown}}             // Bootstrap
    {{> i18n_dropdown_semantic}}    // Semantic UI


Both templates sort languages list by country code.

### Template Helpers

If you want to implement your own UI, tap-i18n-ui facilitates this with handlebars helpers

`i18n_currentLanguage` Returns an object with and localized `name`, language `tag`, and english translation `en`.

    {{i18n_currentLanguage.name}} - {{i18n_currentLanguage.en}}

Including the above snippet in your template will yield something like `Français - (French)`

tap-i18n-ui also provides some other handlebars helpers:

    {{i18n_enabled}}                  // true if languages found
    {{i18n_sortedLanguages}}          // array of available languages
    {{i18n_isCurrentLanguage 'tag'}}  // true if given tag equals current language tag

tap-i18n-ui uses localStorage to save your language choice accross refreshes. You can use `TAPi18n.setLanguageAmplify` to do this yourself.

### Events

You can define a `TAPi18n._afterUILanguageChange` function within your project to be called each time the language is changed using a tap-i18n-ui template.

---

More UI planned including flag-picker.

Thanks to [tap-i18n](https://github.com/TAPevents/tap-i18n) package

MIT License

### Contributors

* Author: [Chris Hitchcott](http://github.com/hitchcott), June 2014
* Semantic-UI: [Robin Carter](https://github.com/rcarter), January 2015
