"use strict"
require ["underscore","jquery","config"],(_,$,config) ->
  class App
    constructor: ->
      @name = "AppName"
      @version = "1.0.0"

    getName: ->
      @name

    getVersion: ->
      @version

    myFunc: ->
      console.log "myFunc"

    chkDependencies:->
      if _ then console.log "underscore #{_.VERSION} is ready"
      if $ then console.log "jquery #{$.prototype.jquery} is ready"
      if config then console.log "config is ready",JSON.stringify(config)
      return _ and $ and config

  app = new App
  if app.chkDependencies()
    console.log "#{app.getName()} #{app.getVersion()} is ready"
  else
    console.log "all dependencies are not loaded"

require ["util/debugUtil.min","util/domUtil.min"],(debugUtil,domUtil) ->
  console.log debugUtil
  console.log domUtil
