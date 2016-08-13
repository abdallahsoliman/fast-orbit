$(window).load ->
  body = $('body')
  universe = $('#universe')
  solarsys = $('#solar-system')

  init = ->
    body.removeClass('view-2D opening').addClass('view-3D').delay(2000).queue ->
      $(this).removeClass('hide-UI').addClass 'set-speed'
      $(this).dequeue()
      return
    return

  setView = (view) ->
    universe.removeClass().addClass view
    return

  $('#toggle-data').click (e) ->
    body.toggleClass 'data-open data-close'
    e.preventDefault()
    return
  $('#toggle-controls').click (e) ->
    body.toggleClass 'controls-open controls-close'
    e.preventDefault()
    return
  $('#data a').click (e) ->
    ref = $(this).attr('class')
    solarsys.removeClass().addClass ref
    $(this).parent().find('a').removeClass 'active'
    $(this).addClass 'active'
    e.preventDefault()
    return
  $('.set-view').click ->
    body.toggleClass 'view-3D view-2D'
    return
  $('.set-zoom').click ->
    body.toggleClass 'zoom-large zoom-close'
    return
  $('.set-speed').click ->
    setView 'scale-stretched set-speed'
    return
  $('.set-size').click ->
    setView 'scale-s set-size'
    return
  $('.set-distance').click ->
    setView 'scale-d set-distance'
    return
  init()
  return
