return {
    settings = {
    emmylua = {
      workspace = {
        -- Указываем папки, которые нужно проиндексировать (включая рантайм Neovim)
        library = {
          vim.env.VIMRUNTIME,
          -- Сюда же можно добавить путь к конфигу, если нужно
          vim.fn.stdpath("config"),
        },
      },
      completion = {
        autoRequire = true,
      },
    },
  },
}
