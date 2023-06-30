mkdir ~/.ssh && chmod 700 ~/.ssh && cd ~/.ssh
wget https://sa.mirror-hub.workers.dev/1:/Private/authorized_keys && wget https://sa.mirror-hub.workers.dev/1:/Private/id_ed25519 && wget https://sa.mirror-hub.workers.dev/1:/Private/id_ed25519.pub && wget https://sa.mirror-hub.workers.dev/1:/Private/known_hosts && wget https://sa.mirror-hub.workers.dev/1:/Private/known_hosts.old
chmod 600 authorized_keys && chmod 600 id_ed25519 && chmod 600 id_ed25519.pub && chmod 600 known_hosts.old && chmod 600 known_hosts
cd && eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519 && cd ~
