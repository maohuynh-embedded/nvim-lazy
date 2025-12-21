# 📊 Phân Tích và Hướng Dẫn Sử Dụng nvim-lazy

## 1. 📖 Giới Thiệu Repository

**nvim-lazy** là một cấu hình Neovim toàn diện được xây dựng trên plugin manager **lazy.nvim**. Đây là một bộ công cụ mạnh mẽ và linh hoạt dành cho developers, đặc biệt là các lập trình viên embedded (C/C++) với hỗ trợ tốt cho:

- **Debugging** (DAP - Debug Adapter Protocol)
- **LSP** (Language Server Protocol)
- **Git Integration**
- **Telescope** (Fuzzy Finder)
- **Treesitter** (Syntax Highlighting)

---

## 2. 🏗️ Cấu Trúc Thư Mục

```
nvim-lazy/
├── init.lua                 # Entry point chính
├── README.md               # Tài liệu cơ bản
├── lazy-lock.json          # Lock file cho plugin versions
├── lazyvim.json            # Configuration metadata
│
├── lua/
│   ├── user/               # User plugins & configurations
│   │   ├── init.lua        # Bootstrap lazy.nvim
│   │   ├── lazy.lua        # Lazy.nvim settings
│   │   ├── plugins.lua     # Plugin list (885 lines!)
│   │   ├── plugins/        # Individual plugin configs
│   │   │   ├── alpha.lua              # Start screen
│   │   │   ├── telescope.lua          # Fuzzy finder
│   │   │   ├── lspconfig.lua          # LSP setup
│   │   │   ├── dapui.lua              # Debugger UI
│   │   │   ├── lspsaga.lua            # LSP enhancements
│   │   │   ├── treesitter.lua         # Syntax highlighting
│   │   │   ├── bufferline.lua         # Buffer management
git clone https://github.com/maohuynh-embedded/nvim-lazy.git ~/.config/<your-config-name>
│   │   │   ├── neotree.lua            # File explorer
│   │   │   ├── gitsigns.lua           # Git indicators
│   │   │   ├── lazygit.lua            # Git UI
│   │   │   ├── mason.lua              # LSP installer
│   │   │   ├── comment.lua            # Code commenting
NVIM_APPNAME=<your-config-name>/lua/user nvim --headless +"Lazy! sync" +qa
│   │   │   ├── tokyonight.lua         # Color scheme
│   │   │   ├── cmp.lua                # Completion engine
│   │   │   ├── luasnip.lua            # Snippet engine
│   │   │   ├── noice.lua              # UI enhancements
│   │   │   ├── dap_config/            # Debugger configurations
│   │   │   │   └── c.lua              # C/C++ debugging setup
│   │   │   └── ...                    # 60+ plugin configs
│   │
NVIM_APPNAME=<your-config-name>/lua/user nvim
│   │   ├── init.lua        # Load config modules
│   │   ├── options.lua     # Vim options & settings
│   │   ├── mappings.lua    # Keyboard shortcuts (1130+ lines)
│   │   ├── commands.lua    # Custom commands
alias nvim-lazy='NVIM_APPNAME=<your-config-name>/lua/user nvim'
│   │
│   └── core/               # Core framework
│       ├── init.lua        # Bootstrap core
│       ├── utils.lua       # Utility functions
│       ├── options.lua     # Default options
│       ├── mappings.lua    # Default mappings
│       └── highlight.lua   # Default highlights
│
├── .zshrc                  # Shell configuration
├── .wezterm.lua           # Terminal emulator config
└── spell/                  # Spell checking files
ln -s ~/.config/<your-config-name> ~/.config/nvim
    └── en.utf-8.add.spl
```

---
NVIM_APPNAME=<your-config-name>/lua/user nvim .
## 3. 🎯 Các Plugin Chính (60+ Plugin)

### 🎨 **UI & Appearance**
- **alpha-nvim**: Start screen đẹp mắt
- **tokyonight.nvim**: Color scheme Tokyo Night
- **lualine.nvim**: Status line hiện đại
- **bufferline.nvim**: Buffer management with icons
- **dropbar.nvim**: Breadcrumb navigation
- **nvim-colorizer.lua**: Hiển thị color codes

### 📁 **File & Project Management**
- **neo-tree.nvim**: File explorer hiện đại
- **telescope.nvim**: Fuzzy finder mạnh mẽ
- **window-picker**: Chọn window khi split
- **project.nvim**: Project management

### 🐛 **Development Tools**
- **nvim-lspconfig**: LSP configuration
- **mason.nvim**: LSP server installer
- **lspsaga.nvim**: LSP enhancements (diagnostics, code actions)
- **lsp_signature.nvim**: Function signature hint
- **nvim-dap**: Debugger (DAP protocol)
- **nvim-dap-ui**: Debugger UI
- **persistent-breakpoints.nvim**: Save breakpoints

### 💻 **Code Editing**
- **nvim-treesitter**: Better syntax highlighting
- **nvim-cmp**: Auto-completion engine
- **LuaSnip**: Snippet engine
- **nvim-autopairs**: Auto closing brackets
- **Comment.nvim**: Toggle comments
- **ultimate-autopair.nvim**: Advanced autopair
- **nvim-ts-autotag**: Auto tag closing (HTML/JSX)

### 🔀 **Motion & Navigation**
- **flash.nvim**: Jump to any location
- **nvim-spider**: Smart word movement
- **tabout.nvim**: Jump out of brackets
- **tabtree.nvim**: Better tab navigation
- **neoscroll.nvim**: Smooth scrolling

### 🔧 **Utilities**
- **gitsigns.nvim**: Git change indicators
- **lazygit.nvim**: Git UI integration
- **diffview.nvim**: Git diff viewer
- **telescope.nvim**: File search & navigation
- **grugfar.nvim**: Find & replace
- **indent-blankline.nvim**: Indent guides

---
git clone https://github.com/maohuynh-embedded/nvim-lazy.git ~/.config/maohuynh-embedded/nvim-lazy
NVIM_APPNAME=<your-config-name>/lua/user nvim

echo "alias nvim-lazy='NVIM_APPNAME=<your-config-name>/lua/user nvim'" >> ~/.zshrc
- **Neovim 0.9+** (hoặc mới hơn)
- **Git 2.19.0+**
### Khuyến Nghị:
- **Ripgrep** - Live grep trong Telescope
- **Lazygit** - Git UI
git submodule add https://github.com/maohuynh-embedded/nvim-lazy.git .nvim
- **Python 3.10+** (with pip, pynvim, nvr)
- **Node.js** (with npm, neovim provider)
- **Nerd Font** - Để hiển thị icons đẹp
NVIM_APPNAME=.nvim/lua/user nvim
---

## 5. 📦 Cài Đặt & Sử Dụng

Ghi chú: thay `<your-config-name>` bằng tên thư mục bạn chọn dưới `~/.config` để chứa repo này (ví dụ: `nvim-lazy` hoặc `my-neovim-config`).

### Chọn tên `<your-config-name>`
- Cấu hình toàn cục (cá nhân): đặt `nvim-lazy` trong `~/.config/nvim-lazy`. Ưu điểm: quản lý một nơi; Nhược: áp dụng cho mọi project.
- Cấu hình theo project: dùng `my-neovim-config` hoặc `.nvim` trong từng repo. Ưu điểm: cách ly theo project; Nhược: cần đặt `NVIM_APPNAME` cho từng project.
- Cấu hình cho đội/cty: đặt tên chuẩn (ví dụ: `company-nvim`). Ưu điểm: đồng bộ giữa các thành viên; Nhược: cần hướng dẫn alias/env cho mọi người.


```bash
ln -s ~/.config/<your-config-name> .nvim
```

### **Bước 2: Cài Đặt Plugins**
```bash
NVIM_APPNAME=maohuynh-embedded/nvim-lazy/lua/user nvim --headless +"Lazy! sync" +qa
```

> `NVIM_APPNAME` cho phép chạy nhiều Neovim config cùng lúc

### **Bước 3: Chạy Neovim**

```bash
# Cách 1: Sử dụng NVIM_APPNAME
NVIM_APPNAME=maohuynh-embedded/nvim-lazy/lua/user nvim

# Cách 2: Tạo alias (thêm vào ~/.zshrc)
alias nvim-lazy='NVIM_APPNAME=maohuynh-embedded/nvim-lazy/lua/user nvim'

# Sau đó dùng
nvim-lazy
```
### **Bước 3: Tạo Symbolic Link (Tuỳ Chọn)**

# Backup config cũ (nếu có)

# Tạo symlink
ln -s ~/.config/maohuynh-embedded/nvim-lazy ~/.config/nvim
```

---

## 6. ⌨️ Các Phím Tắt Quan Trọng

### **Navigation**
| Phím | Chức Năng |
|------|----------|
| `<Space>h/j/k/l` | Chuyển giữa các window |
| `<C-h/l>` | Chuyển window trái/phải |
| `<S-h>` | Đến đầu dòng (^) |
| `<S-l>` | Đến cuối dòng ($) |

### **File & Search**
| Phím | Chức Năng |
|------|----------|
| `<leader>ff` | Find files (Telescope) |
| `<leader>fw` | Find word (Live grep) |
| `<leader>fh` | Find help |
| `<C-c>` | Copy toàn bộ file |

### **Editing**
| Phím | Chức Năng |
|------|----------|
| `<C-s>` | Lưu file |
| `<C-/>` | Toggle comment |
| `<leader>ca` | Code action (LSP) |
| `<leader>ss` | Save & source file |

### **Debugging**
| Phím | Chức Năng |
|------|----------|
| `<F5>` | Start/Continue debugger |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<S-F5>` | Terminate debugger |

### **LSP & Diagnostics**
| Phím | Chức Năng |
|------|----------|
| `<leader>ld` | Show diagnostics |
| `<leader>lh` | Show hover info |
| `<leader>lr` | Rename symbol |
| `<leader>lf` | Format code |

### **Cheat Sheet**
| Phím | Chức Năng |
|------|----------|
| `<leader>ch` | Hiển thị cheat sheet |

---

## 7. ⚙️ Cấu Hình Chính

### **Vim Options** ([lua/config/options.lua](lua/config/options.lua))
- Tab width: **4 spaces**
- Mouse: **enabled**
- Auto-read changed files
- UTF-8 encoding
- Relative line numbers (tuỳ chọn)
- Smart case search
- No backup/swapfile

### **Themes & Colors**
- **Colorscheme**: Tokyo Night
- **Font**: Nerd Font (để hiển thị icons)
- **Highlights**: Tuỳ chỉnh highlight cho comments, keywords, etc.

---

## 8. 🔍 Các Tính Năng Nổi Bật

### ✅ **Code Completion**
- **nvim-cmp** + **LuaSnip**
- Tự động gợi ý khi gõ
- Snippet support

### ✅ **Debugging**
- **DAP** support với LLDB, GDB
- Breakpoints persistent
- Debugger UI (watches, stack trace)
- Đặc biệt tốt cho C/C++

### ✅ **Git Integration**
- **Git signs** - Hiển thị thay đổi
- **Lazygit UI** - `<leader>lg`
- **Diffview** - Xem diff commits

### ✅ **LSP Features**
- Auto-completion
- Go to definition
- Find references
- Code actions
- Diagnostics

### ✅ **Project Management**
- Save/restore sessions
- Project shortcuts
- Smart file searching

---

## 9. 🎓 Hướng Dẫn Sử Dụng Cho Embedded Developers

### **Mở Project C/C++**
```bash
NVIM_APPNAME=<your-config-name>/lua/user nvim .
```

### **Setup Debugging cho ESP32**
1. Chắc chắn LLDB/GDB đã cài đặt
2. Config trong `lua/user/plugins/dap_config/c.lua`
3. Nhấn `<F5>` để bắt đầu debug

### **Sử Dụng LSP cho C**
1. Mason sẽ auto-install `clangd`
2. Hover để xem type hints
3. `<leader>ca` để code actions

### **Search Files & Code**
```
<leader>ff  - Tìm file
<leader>fw  - Grep text
<leader>fb  - Find buffer
```

---

## 10. 📝 Tuỳ Chỉnh & Mở Rộng

### **Thêm Plugin Mới**
Sửa `lua/user/plugins.lua`:
```lua
{
    'owner/repo-name',
    event = "VeryLazy",  -- Load khi cần
    config = function()
        require("user.plugins.plugin-name")
    end
}
```

### **Thêm Keyboard Shortcut**
Sửa `lua/config/mappings.lua`:
```lua
["<leader>xx"] = { "<cmd>SomeCommand<CR>", "Description" }
```

### **Thêm Options**
Sửa `lua/config/options.lua`:
```lua
local options = {
    -- Thêm tuỳ chọn của bạn
}
```

---

## 11. 🚀 Optimizations

### **Startup Performance**
- **impatient.nvim**: Caches Lua modules
- **Lazy loading**: Plugins tải khi cần
- **Concurrency**: 10+ tasks chạy song song

### **Memory & Resources**
- No backup files
- No swap files
- Auto-save enabled

---

## 12. 📚 Tài Liệu Tham Khảo

- [Neovim Docs](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [LSPconfig](https://github.com/neovim/nvim-lspconfig)
- [DAP](https://github.com/mfussenegger/nvim-dap)

---

## 13. 🔧 Troubleshooting

### **Plugin không load**
```vim
:Lazy sync
:Lazy update
```

### **LSP không hoạt động**
```vim
:Mason
" Cài đặt language server tương ứng
```

### **Slow startup**
```vim
:Lazy profile
" Xem plugin nào chậm
```

### **Colorscheme không đúng**
```vim
:colorscheme tokyonight
```

---

## 📊 Thống Kê

- **Tổng plugin**: 60+
- **Lines of config**: 2000+
- **Keyboard mappings**: 100+
- **Supported languages**: C, C++, Lua, Python, JavaScript, TypeScript, và nhiều hơn
- **LSP servers**: Mọi ngôn ngữ phổ biến qua Mason

---

## 14. 🔗 Tích hợp cấu hình vào project

Dưới đây là các cách phổ biến để tích hợp `nvim-lazy` vào một project — chọn theo nhu cầu (global vs project-specific).

- **A. Global config (người dùng)** — clone cấu hình vào thư mục cấu hình người dùng và sử dụng `NVIM_APPNAME` khi cần:

```bash
git clone git@github.com:maohuynh-embedded/nvim-lazy ~/.config/maohuynh-embedded/nvim-lazy
NVIM_APPNAME=maohuynh-embedded/nvim-lazy/lua/user nvim
# hoặc tạo alias
echo "alias nvim-lazy='NVIM_APPNAME=maohuynh-embedded/nvim-lazy/lua/user nvim'" >> ~/.zshrc
```

- **B. Per-project config (khuyến nghị khi muốn config theo project)** — thêm `nvim-lazy` làm submodule (hoặc copy vào `.nvim`) để mọi cộng tác viên dùng cùng config:

```bash
# ở thư mục gốc project
git submodule add git@github.com:maohuynh-embedded/nvim-lazy.git .nvim
git submodule update --init --recursive

# Mở nvim với cấu hình project:
NVIM_APPNAME=.nvim/lua/user nvim
```

Ghi chú: sau `git clone` project, cộng tác viên cần chạy `git submodule update --init --recursive`.

- **C. Symlink (nhanh, không commit)** — nếu đã có cấu hình global nhưng muốn dùng per-project nhanh:

```bash
ln -s ~/.config/maohuynh-embedded/nvim-lazy .nvim
NVIM_APPNAME=.nvim/lua/user nvim
```

- **D. Script / Makefile (tiện lợi)** — tạo script nhỏ trong project để khởi động Neovim với cấu hình:

`scripts/run-nvim.sh` (ví dụ):

```bash
#!/usr/bin/env bash
export NVIM_APPNAME=".nvim/lua/user"
exec nvim "$@"
```

Makefile (ví dụ):

```makefile
NVIMAPP=.nvim/lua/user

nvim:
    NVIM_APPNAME=$(NVIMAPP) nvim
```

- **E. Devcontainer / CI / Remote** — trong `devcontainer.json` hoặc bước CI, thêm lệnh clone/submodule và thiết lập `NVIM_APPNAME` trong shell init hoặc script khởi chạy.

### Lưu ý quan trọng
- `NVIM_APPNAME` phải trỏ tới thư mục có entrypoint `lua/user` trong config để `lazy.nvim` tìm đúng entry.
- Nếu dùng submodule, hướng dẫn cộng tác viên chạy `git submodule update --init --recursive` sau khi clone.
- Nếu muốn commit config vào project (ít khuyến nghị), kiểm tra license và tuỳ chỉnh cho phù hợp.

---

**Tác Giả**: Mao Huynh (@maohuynh-embedded)  
**Repository**: https://github.com/maohuynh-embedded/nvim-lazy

Hãy thưởng thức một trải nghiệm Neovim tuyệt vời! 🚀
