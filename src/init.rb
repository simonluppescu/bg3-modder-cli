require_relative "common"
require_relative "refresh"

def init_cmd
  safe_mkdir(MODS_DIR, with_logging: true)
  safe_mkdir(DUMP_DIR, with_logging: true)

  safe_cp("conf.toml.template", "conf.toml", with_logging: true)

  safe_create("mod-data.json", content: "{}", with_logging: true)

  refresh_cmd

  puts "Done."
end
