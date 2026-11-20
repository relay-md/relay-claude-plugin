NAME    := $(shell jq -r .name .claude-plugin/plugin.json)
VERSION := $(shell jq -r .version .claude-plugin/plugin.json)
BUNDLE  := dist/$(NAME)-$(VERSION).zip

# What ships in the bundle. Everything else in the repository is tooling.
FILES := .claude-plugin/plugin.json .mcp.json README.md LICENSE

.PHONY: validate bundle clean
validate:
	claude plugin validate --strict .

bundle: $(BUNDLE)

$(BUNDLE): $(FILES)
	@mkdir -p dist
	@rm -f $@
	zip -X -q $@ $(FILES)
	@unzip -l $@

clean:
	rm -rf dist
