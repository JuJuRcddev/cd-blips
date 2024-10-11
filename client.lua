local blips = {
    -- (Name of "Blip", colour=, id=, (x,y,z) x - y - z)

    {title="Weapon license", colour=2, id=498, x = 315.1841, y = -213.7764, z = 4.9964},
    {title="Buy Coke Packs", colour=62, id=501, x = 1621.6372, y = 2193.3718, z = 20.0104},
    {title="Buy Meth packs", colour=18, id=499, x = 1621.7190, y = 2176.9165, z = 19.8235}, 
    {title="Money Wash", colour=52, id=272, x = 1263.0819, y = 171.0075, z = 20.2168},
    {title="Central Heights NYC Honkers", id=121, x = -1341.6218, y = 501.1959, z = 10.0102},
    {title="Central Heights NYC Walmart", id=475, x = 431.7403, y = -116.9187, z = 9.1327},
----------------------------------------------------------------------------------------------------------------
{title="Central Heights NYC 27/7", id=59, x = -1341.6218, y = 501.1959, z = 10.0102},
{title="Central Heights NYC 27/7", id=59, x = 444.8839, y = -21.5831, z = 9.4034}, 
{title="Central Heights NYC 27/7", id=59, x = -92.3636, y = 1935.8019, z = 12.6852},
{title="Central Heights NYC 27/7", id=59, x = -97.0055, y = 729.7568, z = 15.1248},
----------------------------------------------------------------------------------------------------------------
    {title="Central Heights NYC Wingstop", id=305, colour=25, x = 1880.5394, y = 725.0846, z = 25.2005},
--    {title="Gang Black 1", colour=2, id=200, x = 415.1841, y = 413.7764, z = 9.9964},
--    {title="Gang Black 2", colour=2, id=500, x = 515.1841, y = 713.7764, z = 3.9964},
--    {title="Gun Store", colour=5. id=498, x = 50.7346, y = -89.1948, z = 4.7860,}, -- To disable a blip put (--) in front of the blip (To enable blip please take out the(--))
--    {title="Court", colour=2, id=294, x = 615.1841, y = -813.7764, z = 1.9964},
--    {title="Deli", colour=2, id=298, x = 715.1841, y = 113.7764, z = 2.9964},
--    {title="Armory", colour=2, id=145, x = 815.1841, y = 513.7764, z = -5.9964},
    {title="Makk Ballas/A Blocc/DOA", colour=1, id=310, x = 730.7990, y = 2103.3811, z = 20.2400},
   {title="Makk Ballas/A Blocc/DOA", colour=1, id=310, x = -1740.2152, y = 305.5580, z = 2.4569},
   {title="Makk Ballas/A Blocc/DOA", colour=1, id=310, x = 1383.1244, y = 1183.6532, z = 61.5916},
    {title="OY", colour=40, id=270, x = -103.9038, y = 2123.4934, z = 16.4224},
   {title="OY", colour=40, id=270, x =  120.4887, y = 1969.8060, z = 18.4710},
   {title="OY", colour=40, id=270, x = 1786.6085, y = 628.0111, z = 23.1260},
    {title="Court Room", colour=9, id=475, x = 111.7204, y = 1315.2933, z = 94.9086},
    {title="Reyway/180th St. Crips", colour=18, id=468, x = 1420.5872, y = 2299.2097, z = 9.7837},
    {title="Reyway/180th St. Crips", colour=18, id=468, x = -1516.7341, y = 881.2791, z = 25.4807},
    {title="Reyway/180th St. Crips", colour=18, id=468, x = 445.0568, y = 445.2117, z = 276.1575},
    {title="Central Heights NYC Cookies", colour=53, id=140, x = -167.8773, y = 2006.8416, z = 19.0518},
    {title="Central Heights NYC Casino", colour=7, id=679, x = -28.4669, y = 548.3304, z = 71.0591},
}


-- (To add any blips, Please copy and {Paste} a line from the code and change out the Coords!)
-- (To change the name of a blip please remove the name from it like, {"Gang Block 1"} to {"Clothing Store"})
-- {PLease Do not Claim any scripts made By (Central Development)}

Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.2)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
  BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)

-- {Any Questions On this script please make a Ticket in Central Development Discord} -Discord- (https://discord.gg/cddev)