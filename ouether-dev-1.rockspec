package = "ouether"
version = "dev-1"
source = {
   url = "git+https://github.com/PWanczycki/ouether.git"
}
description = {
   summary = "A Rainmeter skin to display the weather",
   detailed = "A Rainmeter skin to display the weather",
   homepage = "https://github.com/PWanczycki/ouether",
   license = "*** please specify a license ***"
}
dependecies = {
    "lua-resty-http >= 0.16.1-0"
}
build = {
   type = "builtin",
   modules = {
      switch = "switch.lua"
   }
}
