# ~/.config/fish/config.fish

# ── Environment ─────────────────────────────
set -gx EDITOR nvim
set -gx VISUAL nvim
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

# ── PATH ────────────────────────────────────
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

# ── Aliases ─────────────────────────────────
abbr -a ls 'ls --color=auto'
abbr -a ll 'ls -lah'
abbr -a la 'ls -A'
abbr -a c 'clear'
abbr -a n nvim
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'
abbr -a yap 'find . -type f ! -name "*.o" ! -name "*.img" ! -name "*.bin" ! -name "*.elf" -exec sh -c \'echo "========$1========"; cat $1\' _ {} \;'
abbr -a yippe 'set package $({ pacman -Slq; yay -Slaq; } | sort -u | fzf) && yay -S $package'

# ── Git ─────────────────────────────────────
abbr -a gs 'git status'
abbr -a ga 'git add .'
abbr -a gc 'git commit -m'
abbr -a gp 'git push'
abbr -a glog 'git log --graph --all --decorate --pretty=format:"%C(cyan)%h%Creset - %C(yellow)%ad%Creset - %C(green)%an%Creset - %C(bold white)%s%Creset %C(red)%d%Creset" --date=format:"%Y-%m-%d %H:%M"'

# ── Pacman ──────────────────────────────────
abbr -a update 'sudo pacman -Syu'
abbr -a install 'sudo pacman -S'

# ── Rust ────────────────────────────────────
abbr -a cr 'cargo run'
abbr -a cb 'cargo build'
abbr -a ct 'cargo test'

#──Other──────────────────────────────────────

#── Startup ──────────────────────────────────
if status is-interactive
    fastfetch
    fish_add_path /home/ussr/go/bin
	#starship init fish | source
	#oh-my-posh init fish | source
	oh-my-posh init fish --config 'https://raw.githubusercontent.com/maxstolly/catppuccin.omp/main/mocha.omp.json' | source
    zoxide init fish | source
	function y
		set tmp (mktemp -t "yazi-cwd.XXXXXX")
		command yazi $argv --cwd-file="$tmp"
		if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
			builtin cd -- "$cwd"
		end
		command rm -f -- "$tmp"
	end

end

# ── Apps ────────────────────────────────────
abbr -a steam 'flatpak run com.valvesoftware.Steam -forcedesktopscaling 1'
