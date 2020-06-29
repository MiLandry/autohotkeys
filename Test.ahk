; try out code here. If pilot light is running, use alt shift T to run it
;MsgBox, test














FormatTime, TimeString, %A_NOW%, MM-dd-yyyy

  FileCopy, C:\Users\miclandry\Documents\timesheets\template.doc, C:\Users\miclandry\Documents\timesheets\landry_timesheet_%TimeString%.doc
