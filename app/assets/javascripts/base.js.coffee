$(document).ready ->
  $('#content .photo-thumbs .photo').hover fadeImageIn, fadeImageOut

fadeImageIn = ->
  $(this).find('img').fadeTo 'fast', 0.3
  $(this).find('.caption').fadeTo 'fast', 1

fadeImageOut = ->
  $(this).find('img').fadeTo 'fast', 1
  $(this).find('.caption').fadeTo 'fast', 0
