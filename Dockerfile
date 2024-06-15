# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Install zsh and other dependencies
RUN apt-get update && \
    apt-get install -y zsh git curl && \
    apt-get clean

# Set up the user
RUN useradd -m -s /bin/zsh user

# Copy dotfiles into the user's home directory
# COPY dotfiles/.zshrc /home/user/.zshrc
# COPY dotfiles/.zshenv /home/user/.zshenv
# Add other dotfiles as necessary

# Change ownership of the copied files
RUN chown -R user:user /home/user

# Switch to the user
USER user

# Set the default command to zsh
CMD ["zsh"]
