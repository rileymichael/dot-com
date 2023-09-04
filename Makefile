SITE_DIR := _site

.PHONY: help serve clean build
.SILENT: help serve clean build

help: ## display all Make targets
	awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

serve: ## serve with hot reloading
	docker run --rm -p 8000:8000 -v $(CURDIR):/docs squidfunk/mkdocs-material

clean: ## clean build directory
	rm -rf $(SITE_DIR)

build: ## build site
	docker run --rm -v $(CURDIR):/docs squidfunk/mkdocs-material build --site-dir $(SITE_DIR)
