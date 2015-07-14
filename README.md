# TableFilter
**Description:** This is a simple plugin I wrote that lets you generate a list of checkboxes to hide/show content corresponding to a specified column in a table.

## Usage:
Just grab the file from the repo and drop it into whatever project you're working on. All you need is a table with a column to filter by and an empty div where the checkboxes will apear.
```
  <table>
    <tr>
      <td>Car Name</td>
      <td>Car Color</td>
    </tr>
    <tr>
      <td>Lexus ES 350h</td>
      <td class="filter">Black</td>
    </tr>
    ...
  </table>
  <div id="insertCheckboxesHere"></div>
```

```
  $("#insertCheckboxesHere").tableFilter({
      columnToSearch: '.filter',
      columnVals: ["black","red","green","blue"],
      columnLabels: ["Black","Red","Green","Blue"],
      toggleCl: "hideRow"
    });
```
### Options
* columnToSearch: Specifies which cell of a table to search filter by identifying it through a class. You have to add this to all td's that you want to filter.
* columnVals: An array of strings, each of which we will use to search the table column values (as a substring)
* columnLabels: Labels for the checkboxes corresponding (by index) to the array of searching values in columnVals
* toggleCl: Specifies the class to toggle on checkBox click.

### To-do:
* There should probably be a more robust way to identify a searching column (e.g. specify an id for the column header or something and have the plugin do math to find all matching td's for that column).
* Add better defaults: if columnVals and columnLabels aren't both given, there are problems/nothing happens. Also, it should probably just filter all td's of a table if "columnToSearch" is not specified.
* Semantically, it probably doesn't make sense to attach this plugin to the checkbox div. Instead, it should be attached to a table.

### Additional:
Feel free to fork and submit pull requests. This is one of my first plugins, so I'm sure there's a better solution out there!
