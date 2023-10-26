$regionalsettingsURL = "sökväg till storageaccount\SEregion.xml"
$RegionalSettings = "storage account\SERegion.xml"



#downdload regional settings file
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($regionalsettingsURL,$RegionalSettings)


# Set Locale, language etc. 
& $env:SystemRoot\System32\control.exe "intl.cpl,,/f:`"$RegionalSettings`""

# Set languages/culture. Not needed perse.
Set-WinSystemLocale sv-SE
Set-WinUserLanguageList -LanguageList sv-SE -Force
Set-Culture -CultureInfo sv-SE
Set-WinHomeLocation -GeoId 221
Set-TimeZone -Name "W. Europe Standard Time"