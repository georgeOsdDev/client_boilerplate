"use strict"
debugUtil =
  loggingWrap: (self, func) ->
    orgFunc = func
    ->
      console?.log "Start #{func.name}"
      console?.log "arguments[#{i}] = #{arg}" for arg, i in arguments
      result = orgFunc.apply self, arguments
      console?.log "result = [#{result}]"
      result

  debugToScreen: (obj) ->
    message = obj.toString()
    div = root.document.getElementById("debugOutput") || root.document.createElement("div")
    div.id = "debugOutput"
    logger = root.document.createElement("p")
    logger.innerHTML = message
    logger.setAttribute 'style',"background-color:whiteSmoke"
    logger.addEventListener 'click', ->
      div.removeChild(this)
    div.appendChild logger
    root.document.body.appendChild(div)

define debugUtil
