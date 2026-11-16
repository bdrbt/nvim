return {
    settings = {
        texlab = {
            build = {
                executable = "latexmk",
                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                onSave = false
            },
            chktex = {
                onOpenAndSave = true -- проверка орфографии/стиля через chktex (если установлен)
            },
            formatterLineLength = 80
        }
    }
}
