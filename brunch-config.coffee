exports.config =
  paths:
    watched: ['app/styles', 'app/scripts', 'app/images']
    public: 'public' # export path
  files:
    javascripts:
      joinTo: 'javascripts/app.js'

    stylesheets:
      joinTo: 'stylesheets/app.css'
      order:
        before: ['app/styles/module/bootstrap.less']

    # templates:
    #   joinTo: 'templates.js'

  modules:
    nameCleaner: (path) ->
      path.replace(/^app\/scripts\//, '') # root dir
  #   wrapper: (path, data) ->
  #     return 'require.define({#{path}, function (exports, require, module) {#{data}}});\n\n'
  # conventions:
  #   assets: /images(\/|\)/