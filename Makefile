.PHONY: help install uninstall restow list

# Auto-detect all packages (subdirectories)
PACKAGES := $(shell find . -maxdepth 1 -type d -not -name '.*' -not -name 'scripts' | sed 's|./||')

# Default target
help:
	@echo "Dotfiles Management"
	@echo "==================="
	@echo "make install    - Stow all packages"
	@echo "make uninstall  - Unstow all packages"
	@echo "make restow     - Restow all packages"
	@echo "make list       - List all packages"

# Stow all packages
install:
	@echo "Stowing packages: $(PACKAGES)"
	@stow -v $(PACKAGES)
	@echo "✓ Done!"

# Unstow all packages
uninstall:
	@echo "Unstowing packages: $(PACKAGES)"
	@stow -D -v $(PACKAGES)
	@echo "✓ Done!"

# Restow all packages
restow:
	@echo "Restowing packages: $(PACKAGES)"
	@stow -R -v $(PACKAGES)
	@echo "✓ Done!"

# List available packages
list:
	@echo "Available packages:"
	@echo "$(PACKAGES)" | tr ' ' '\n'
