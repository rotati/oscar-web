CIF.Custom_fieldsIndex = do ->
  _init = ->
    _active_tab()

  _active_tab = ->
    tab = window.location.href.split('tab')[1]
    return if tab == undefined
    if tab.substr(1) == 'all_ngo'
      $('a[href="#all-custom-form"]').tab('show')

  { init: _init }
