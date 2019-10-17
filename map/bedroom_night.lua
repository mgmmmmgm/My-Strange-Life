function CreateRoomNightMap()
  return {
    version = "1.2",
    luaversion = "5.1",
    tiledversion = "1.2.4",
    orientation = "orthogonal",
    renderorder = "right-down",
    width = 13,
    height = 12,
    tilewidth = 16,
    tileheight = 16,
    nextlayerid = 3,
    nextobjectid = 1,
    properties = {},
    on_wake = {},
    actions = {},  
    trigger_types = {},  
    triggers = {}, 
    tilesets = {
      {
        name = "atlas",
        firstgid = 1,
        tilewidth = 16,
        tileheight = 16,
        spacing = 0,
        margin = 0,
        columns = 79,
        image = "atlas.png",
        imagewidth = 1268,
        imageheight = 682,
        tileoffset = {
          x = 0,
          y = 0
        },
        grid = {
          orientation = "orthogonal",
          width = 16,
          height = 16
        },
        properties = {},
        terrains = {},
        tilecount = 3318,
        tiles = {}
      },
      {
        name = "collision_graphic",
        firstgid = 3319,
        tilewidth = 16,
        tileheight = 16,
        spacing = 0,
        margin = 0,
        columns = 2,
        image = "collision_graphic.png",
        imagewidth = 32,
        imageheight = 32,
        tileoffset = {
          x = 0,
          y = 0
        },
        grid = {
          orientation = "orthogonal",
          width = 16,
          height = 16
        },
        properties = {},
        terrains = {},
        tilecount = 4,
        tiles = {}
      }
    },
    layers = {
      {
        type = "tilelayer",
        id = 1,
        name = "Tile Layer 1",
        x = 0,
        y = 0,
        width = 13,
        height = 12,
        visible = true,
        opacity = 1,
        offsetx = 0,
        offsety = 0,
        properties = {},
        encoding = "lua",
        data = {
          1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259,
          1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338,
          1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417,
          1484, 1485, 1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495, 1496,
          1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575,
          1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654,
          1721, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733,
          1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812,
          1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891,
          1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970,
          2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049,
          2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128
        }
      },
      {
        type = "tilelayer",
        id = 3,
        name = "decoration",
        x = 0,
        y = 0,
        width = 13,
        height = 12,
        visible = true,
        opacity = 1,
        offsetx = 0,
        offsety = 0,
        properties = {},
        encoding = "lua",
        data = {
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 2206, 2207, 2208, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 2285, 2286, 2287, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 2365, 2366, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 2443, 2444, 2445, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        }
      },
      {
        type = "tilelayer",
        id = 2,
        name = "collision",
        x = 0,
        y = 0,
        width = 13,
        height = 12,
        visible = true,
        opacity = 0.61,
        offsetx = 0,
        offsety = 0,
        properties = {},
        encoding = "lua",
        data = {
          3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319,
          3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319,
          3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319,
          3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319, 3319, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319, 3319, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319, 3319, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319,
          3319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3319,
          3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 3319, 0, 0, 3319, 3319
        }
      }
    }
  }
end
