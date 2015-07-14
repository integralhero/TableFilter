(($) ->
  $.fn.tableFilter = (options) ->
    # This is the easiest way to have default options.
    settings = $.extend({
      checkboxDivContainerID: this
      columnToSearch: ''
      columnVals: []
      columnLabels: []
      toggleCl: "hideRow"
    }, options)
    getMatchingTableRows = (td_value) ->
      matching_rows  = $("td" + settings.columnToSearch).filter ->
        return $(this).text().toLowerCase().search(td_value) != -1
      return matching_rows.closest "tr"
    # add in all the checkboxes
    printCheckbox = (divID, value, label) ->
      $(divID).append('<input type="checkbox" value="' + value + '" checked/> ' + label + '<br />')
    printCheckbox settings.checkboxDivContainerID, val, settings.columnLabels[i] for val,i in settings.columnVals
    # add event handlers to all checkboxes
    addEventHandlers = () ->
      $(settings.checkboxDivContainerID).on "change","input[type='checkbox']", ->
        checkValue = $(this).val()
        matchingRows = getMatchingTableRows(checkValue)
        if $(this).is(':checked')
          matchingRows.removeClass(settings.toggleCl)
        else
          matchingRows.addClass(settings.toggleCl)
    addEventHandlers()
) jQuery
