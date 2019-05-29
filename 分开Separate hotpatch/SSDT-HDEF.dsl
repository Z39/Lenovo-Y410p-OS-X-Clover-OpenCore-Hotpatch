
// Automatic injection of HDEF properties

DefinitionBlock("", "SSDT", 2, "Y410P", "HDEF", 0)
{
    External(_SB.PCI0.HDEF, DeviceObj)
    
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            
            "layout-id", Buffer() { 41, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
        })
   }
}

// EOF
