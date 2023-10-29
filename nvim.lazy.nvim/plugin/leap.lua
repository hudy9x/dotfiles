local stt, leap = pcall(require, 'leap')
if not stt then return end

leap.add_default_mappings(true)
