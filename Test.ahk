; try out code here. If pilot light is running, use alt shift T to run it
;MsgBox, test














FormatTime, TimeString, %A_NOW%, MM-dd-yyyy
C:\Users\miclandry\Documents\timesheets
Run C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE /c ipm.note /m "Monika.Prasad@vectorconsulting.com&subject=RE: Timesheet landry%TimeString%&cc=vpenumatsa@deloitte.com&body=Timesheet Attached"
