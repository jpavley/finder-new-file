try
	tell application "Finder" to set the this_folder ¬
		to (folder of the front window) as alias
on error -- if there is no window open
	set the this_folder to path to desktop folder as alias
end try

set thefilename to "filename.md"
set thefullpath to POSIX path of this_folder & thefilename
do shell script "touch \"" & thefullpath & "\""
