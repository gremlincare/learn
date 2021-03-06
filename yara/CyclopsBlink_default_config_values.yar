rule CyclopsBlink_default_config_values
{
 meta:
 author = "NCSC"
 description = "Detects the code bytes used to set default Cyclops
Blink configuration values"
 hash1 = "3adf9a59743bc5d8399f67cab5eb2daf28b9b863"
 hash2 = "c59bc17659daca1b1ce65b6af077f86a648ad8a8"
 strings:
 // Unknown config value set to 0x19
 $ = {38 00 00 19 90 09 01 A4}
 // Unknown config value set to 0x18000
 $ = {3C 00 00 01 60 00 80 00 90 09 01 A8}
 // Unknown config value set to 0x4000
 $ = {38 00 40 00 90 09 01 AC}
 // Unknown config value set to 0x10b
 $ = {38 00 01 0B 90 09 01 B0}
 // Unknown config value set to 0x2711
 $ = {38 00 27 11 90 09 01 C0}
 condition:
 (uint32(0) == 0x464c457f) and (3 of them)
}
