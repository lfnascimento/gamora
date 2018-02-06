$(document).on 'turbolinks:load', ->
  initCountdown()

initCountdown = ->
  $('.offer-countdown').each ->
    $(this).countdown( { format: 'dhms', until: new Date($(this).data('ends-at')) } )
