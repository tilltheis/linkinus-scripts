-- Thanks to http://foolsworkshop.com/applescript/2008/05/an-applescript-replace-text-method/
on replaceText(find, replace, subject)
    set prevTIDs to text item delimiters of AppleScript
    set text item delimiters of AppleScript to find
    set subject to text items of subject

    set text item delimiters of AppleScript to replace
    set subject to "" & subject
    set text item delimiters of AppleScript to prevTIDs

    return subject
end replaceText

on linkinuscmd(cmd)
    set nl to ASCII character 10
    set cr to ASCII character 13
    do shell script cmd
    set resultWithNewlines to replaceText(cr, nl, result)
    set theResult to the resultWithNewlines as string
end linkinuscmd
