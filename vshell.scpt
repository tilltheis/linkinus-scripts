-- Verbose shell. First print the command, then the result.
-- by Till Theis (http://www.tilltheis.de)
-- Version 0.1
on linkinuscmd(cmd)
    set nl to ASCII character 10
    set theResult to "$ " & cmd & nl & "/shell " & cmd as string
end linkinuscmd
