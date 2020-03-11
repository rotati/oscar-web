CIF.Field_settingsIndex = do ->
  _init = ->
    _initICheckBox()
    _toggleSubmitButton()
    _handleGroupHiddenStateChange()

  _initICheckBox = ->
    $('.i-checks-meta-fields').iCheck(
        checkboxClass: 'icheckbox_square-green'
    ).on('ifCreated', (event) ->
      if $(this).attr('title')
        $(this).parent().attr 'title', $(this).attr('title')
      return
    )

  _toggleSubmitButton = ->
    $("#accordion .panel-collapse").on "click keyup change ifChanged", "input", ->
      if $(@).closest("form").find("#field_setting_label").val().length == 0
        $(@).closest("form").find("input[type='submit']").addClass("hidden")
      else
        $(@).closest("form").find("input[type='submit']").removeClass("hidden")

  _handleGroupHiddenStateChange = ->
    $("#accordion").on "ifChanged", ".panel-heading input", ->
      $(@).closest("form").submit()

  { init: _init }