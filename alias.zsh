# aliases, yo
# [[[[secrets are in secrets.zsh]]]]

# open file or directory in default edirot
alias edit="open -a \"${TEXT_EDITOR}\" ${1}"
alias suedit="sudo open -a \"${TEXT_EDITOR}\" ${1}"

# open file or directory in default markdown editor
alias mdedit="open -a \"${MARKDOWN_EDITOR}\" ${1}"

# yo dawg
alias zshrc="open -a \"${TEXT_EDITOR}\" \"${HOME}/.zshrc\" && open -a \"${TEXT_EDITOR}\" \"${HOME}/zsh\""

# show me what you got
alias lls='/usr/local/bin/grc /bin/ls -lah'

# whargarrbl (REQUIRES HOMEBREW)
alias brwe='/usr/local/bin/brew' # because I cant type for shit

# print public key to console
alias pubkey="cat ${HOME}/.ssh/${PUB_KEY_NAME}"

# convert mov file to mp4 file (REQUIRES FFMPEG)
alias mov2mp4="ffmpeg -i \"${1}.mov\" -vcodec h264 -acodec mp2 \"${1}.mp4\""

alias codemaat='java -jar /Users/steve/projects/code-maat/target/code-maat-1.1-SNAPSHOT-standalone.jar -c git2'