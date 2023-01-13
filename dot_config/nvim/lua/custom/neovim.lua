local M = {}
--  _____                _ _     _       ______      __            _ _       
-- /  ___|              (_) |   | |      |  _  \    / _|          | | |      
-- \ `--.  ___ _ __  ___ _| |__ | | ___  | | | |___| |_ __ _ _   _| | |_ ___ 
--  `--. \/ _ \ '_ \/ __| | '_ \| |/ _ \ | | | / _ \  _/ _` | | | | | __/ __|
-- /\__/ /  __/ | | \__ \ | |_) | |  __/ | |/ /  __/ || (_| | |_| | | |_\__ \
-- \____/ \___|_| |_|___/_|_.__/|_|\___| |___/ \___|_| \__,_|\__,_|_|\__|___/

M.options = {
  number = true,
  relativenumber = true,
  autochdir = true,
  clipboard = "unnamedplus",
  scrolloff = 8,
  sidescrolloff = 8,
  fileencoding = "utf-8",
  -- fileformats = "unix",
  pumheight = 10,
  swapfile = false,
  undofile = true,

  wildignore = {
    -- We should ignore most binary files
    "*.aux,*.out,*.toc",
    "*.o,*.obj,*.dll,*.jar,*.pyc,__pycache__,*.rbc,*.class",
    -- media
    "*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp",
    "*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm",
    "*.eot,*.otf,*.ttf,*.woff",
    "*.doc,*.pdf",
    -- archives
    "*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz",
    -- temp/system
    "*.*~,*~ ",
    "*.swp,.lock,.DS_Store,._*,tags.lock",
    -- version control
    ".git,.svn",
  },
  shortmess = {
    t = true, -- truncate file messages at start
    A = true, -- ignore annoying swap file messages
    o = true, -- file-read message overwrites previous
    O = true, -- file-read message overwrites previous
    T = true, -- truncate non-file messages in middle
    f = true, -- (file x of x) instead of just (x of x
    F = true, -- Don't give file info when editing a file, NOTE: this breaks autocommand messages
    s = true,
    c = true,
    W = true, -- Don't show [w] or written when writing
  }
}


M.config = function()
  for k, v in pairs(M.options) do
    vim.opt[k] = v
  end
  vim.cmd [[
    set iskeyword+=-  " If a word has dashes in it, still treat it as one word
    set mouse-=a
  ]]
end


return M
