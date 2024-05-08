SRC_PATH = "src-url.txt"

File.foreach(SRC_PATH) {|l|
  url = l.strip
  cmd = "curl -o tmp.zip #{url}; /opt/homebrew/opt/unzip/bin/unzip -O CP932 -d src tmp.zip"
  print cmd, "\n"
  system cmd
}
system "rm tmp.zip"

