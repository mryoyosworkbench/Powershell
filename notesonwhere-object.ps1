#The below works by finding the property name and searching for the name that contains whatever is in the quoted string.
Get-Process |Where-Object Name -like '*pwsh*'
#The below is different, we're invoking the property 'name' and not finding it, declaring the property this way is for older versions of powershell.
Get-Process |Where-object {$_.Name -Notlike '*pwsh*'}