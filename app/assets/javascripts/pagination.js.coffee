jQuery ->
  if $('#infinite-scrolling').length > 0
    $(window).on 'scroll', ->
      more_items_url = $('.pagination .next_page a').attr('href')
      if more_items_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('.pagination').html('<p> loading <p>')
        $.getScript more_items_url
      return
    return