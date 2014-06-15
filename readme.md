# tap-i18n-ui

## UI helpers for the [tap-i18n](https://github.com/TAPevents/tap-i18n) package

### Install

    $ mrt add tap-i18n-ui

### Additional Templates

To generate a series of [bootstrapped](http://getbootstrap.com/) select language buttons: 

    {{> i18n_buttons}}

To provide a dropdown `<select>` list of available languages:

    {{> i18n_dropdown}}

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
    

---

More UI planned including flag-picker.

Thanks to [tap-i18n](https://github.com/TAPevents/tap-i18n) package

MIT License 

Author [Chris Hitchcott](http://github.com/hitchcott),  June 2014
