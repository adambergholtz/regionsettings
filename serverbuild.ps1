$regionalsettingsURL = "https://github.com/adambergholtz/regionsettings/blob/9345b91a94184c5566eded8ee8422b412b6ce76d/SERegion.xml"
$RegionalSettings = "C:\SERegion.xml"


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
