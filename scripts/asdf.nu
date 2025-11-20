
#!/usr/bin/env nu

# Install asdf plugins and latest versions for Rust, Go, Node.js, and Bun

# Define the tools to install
let tools = ["rust", "golang", "nodejs", "bun"]

# Add plugins
print "Adding asdf plugins..."
for tool in $tools {
    print $"Adding plugin: ($tool)"
    try {
        asdf plugin add $tool
    } catch {
        print $"Plugin ($tool) already installed or error occurred"
    }
}

# Install latest versions
print "\nInstalling latest versions..."
for tool in $tools {
    print $"Installing latest ($tool)..."
    try {
        asdf install $tool latest
    } catch {
        print $"Failed to install ($tool)"
    }
}

# Set global versions
print "\nSetting global versions..."
for tool in $tools {
    print $"Setting global version for ($tool)..."
    try {
        asdf global $tool latest
    } catch {
        print $"Failed to set global version for ($tool)"
    }
}

print "\nDone! All tools installed and configured."
print "\nCurrent global versions:"
asdf current
