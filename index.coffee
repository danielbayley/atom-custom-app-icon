{spawn} = require 'child_process'

module.exports =
  #os: process.platform

  #backup: 'sync-settings.extraFiles'
  #pattern: '*.icns' # {Atom,file}

  config: path:
    #title: "Path to .icns"
    description: "File path/s to `Atom.icns` and/or `file.icns`
      or path to a folder containing them."
    type: 'string'
    default: atom.configDirPath

  subs: null
  activate: ->
#-------------------------------------------------------------------------------

    #if @os is 'darwin'
    icns = atom.config.get 'custom-app-icon.path'

    spawn "#{__dirname}/refre.sh", icns.split ','

    # Backup icons with sync-settings if installed
    #if atom.packages.isPackageLoaded 'sync-settings'
      #unless @pattern in atom.config.get @backup
        #atom.config.pushAtKeyPath @backup, @pattern

    # Restore original icon/s
    @subs = atom.commands.add 'atom-workspace',
      'custom-app-icon:restore', -> spawn "#{__dirname}/refre.sh"

#-------------------------------------------------------------------------------
  deactivate: -> @subs.dispose()
