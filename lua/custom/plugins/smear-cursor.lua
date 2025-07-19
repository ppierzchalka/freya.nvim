-- Smear Cursor
return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,
    -- Smear cursor when moving within a buffer.
    smear_between_neighbor_lines = true,
    -- Use floating windows to display smears over wrapped lines or outside buffers.
    use_floating_windows = true,
    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    legacy_computing_symbols_support = false,
  },
}
