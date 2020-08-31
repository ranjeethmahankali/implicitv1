function make_club(xb, yb, zb, height, radius, filletSize)
   radius = radius - filletSize
   local clarge = cylinder(xb, yb, zb, xb, yb, zb + height, radius)
   radius = radius * 0.35
   local csmall = cylinder(xb, yb, zb, xb, yb, zb + height, radius)
   local cblend = smoothblend(clarge, csmall, xb, yb, zb, xb, yb, zb + height)
   return offset(cblend, filletSize)
end
