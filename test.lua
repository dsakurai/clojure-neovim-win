function OnePlusTwo()
  local result = vim.fn.system({
    'powershell',
    '-NoProfile',
    '-Command',
    "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; clojure -M -e '(+ 1 2 3)'"
  })

  vim.api.nvim_out_write("Result: " .. result .. "\n")
end
