require 'find'
require 'open3'
require 'json'
SRC_DIR = "src"
MAXZOOM = 14

def minzoom(layer)
  case layer
  when 'tokei'
    4
  when 'ritteki'
    5
  when 'senbiki'
    10
  else
    11
  end
end

def tippecanoe(layer)
  {
    "layer": layer,
    "minzoom": minzoom(layer),
    "maxzoom": MAXZOOM
  }
end

Find.find(SRC_DIR) {|path|
  next unless /shp$/.match path
  $stderr.print "#{path}\n"
  layer = File.basename(path, ".shp").split("_")[-1]
  cmd = "ogr2ogr -f GeoJSONSeq /vsistdout/ #{path} | tippecanoe-json-tool"
  Open3.popen3(cmd) {|i, o, _|
    o.each_line {|l|
      f = JSON.parse(l)
      f["tippecanoe"] = tippecanoe(layer)
      print "#{JSON.dump(f)}\n"
    }
  }
}

