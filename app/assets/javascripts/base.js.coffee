$(document).ready ->
  $('#content .photo-thumbs .photo').hover fadeImageIn, fadeImageOut
  $('#content .photo-detail .photo .fancy').fancybox({padding: 0})

fadeImageIn = ->
  $(this).find('img').fadeTo 'fast', 0.3
  $(this).find('.caption').fadeTo 'fast', 1

fadeImageOut = ->
  $(this).find('img').fadeTo 'fast', 1
  $(this).find('.caption').fadeTo 'fast', 0
