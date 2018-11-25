
$(document).on 'change', '#comment_company_id', ->
  $.ajax(
    type: 'GET'
    url: '/comments/get_brands'
    data: {
      company_id: $(this).val()
    }
  ).done (data) ->
    $('.city-area').html(data)
