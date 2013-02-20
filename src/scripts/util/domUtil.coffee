"use strict"
define ["jquery"],($) ->
  domUtil =
    setScrollTop: ->
      backToDiv = """
      <div id='back-to-top' style='position:fixed;right:10px;bottom:10px'>
        <a href='#'><img src='img/back-to-top.png'　alt=""back to top ↑></a>
      </div>
      """
      $('body').append(backToDiv)
      $('#back-to-top').hide()
      $(window).scroll ->
        if ($ this).scrollTop() > 60
          $('#back-to-top').fadeIn()
        else
          $('#back-to-top').fadeOut()
        return
      $('#back-to-top a').click =>
        $('body').animate({ scrollTop:0 }, 500)
        return false
      return

  return domUtil
