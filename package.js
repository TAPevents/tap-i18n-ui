Package.describe({
  name: 'tap:i18n-ui',
  summary: 'User interface for the tap-i18n package',
  version: '0.7.0',
  git: 'https://github.com/TAPevents/tap-i18n-ui'
});

Package.onUse(function (api) {
  api.versionsFrom('METEOR@0.9.1');

  api.use("tap:i18n@1.0.3");

  api.use(['coffeescript','underscore','templating','amplify'], 'client');

  api.add_files([
    'i18n_ui_amplify.coffee',
    'i18n_ui_client_helpers.coffee',
    'frameworks/i18n_ui_bootstrap.html',
    'frameworks/i18n_ui_bootstrap.coffee',
    'frameworks/i18n_ui_semantic.html',
    'frameworks/i18n_ui_semantic.coffee'
  ], 'client');
});
