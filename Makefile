# The plugin is the plugin/ folder; that folder is what the directory reads
# and what the bundle contains. Everything at the repository root is tooling.
NAME    := $(shell jq -r .name plugin/.claude-plugin/plugin.json)
VERSION := $(shell jq -r .version plugin/.claude-plugin/plugin.json)
BUNDLE  := dist/$(NAME)-$(VERSION).zip

.PHONY: validate bundle clean
validate:
	claude plugin validate --strict .
	claude plugin validate --strict plugin

bundle:
	@mkdir -p dist
	@rm -f $(BUNDLE)
	cd plugin && zip -X -q -r $(CURDIR)/$(BUNDLE) . -x '.DS_Store' '*/.DS_Store'
	@unzip -l $(BUNDLE)

clean:
	rm -rf dist
