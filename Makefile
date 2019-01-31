redocmd := $(HOME)/.local/bin/redo

$(redocmd):
	@sudo apt-get update
	@sudo apt install -y python-pip python3-pip
	@pip3 install --user xonsh==0.8.9
	@pip install --user redo-tools==0.41


all: scaffold
	@$(redocmd) hello

flagged: scaffold
	@NO_FLAGS=1 $(redocmd) hello

scaffold: $(redocmd)

clean:
	@rm -f hello
