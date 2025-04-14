# Reg2CI (c) 2022 by Roger Zander
try {
	if(-NOT (Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\General")){ return $false };
	if(-NOT (Test-Path -LiteralPath "HKCU:\Software\Microsoft\Office\16.0\Outlook\Preferences")){ return $false };
	if((Get-ItemPropertyValue -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\Options\General' -Name 'HideNewOutlookToggle' -ea SilentlyContinue) -eq 1) {  } else { return $false };
	if((Get-ItemPropertyValue -LiteralPath 'HKCU:\Software\Microsoft\Office\16.0\Outlook\Preferences' -Name 'UseNewOutlook' -ea SilentlyContinue) -eq 0) {  } else { return $false };
}
catch { return $false }
return $true