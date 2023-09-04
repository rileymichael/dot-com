SITE_DIR := _site

.PHONY: serve clean build

serve:
	docker run --rm -p 8000:8000 -v $(CURDIR):/docs squidfunk/mkdocs-material

clean:
	rm -rf $(SITE_DIR)

build:
	docker run --rm -v $(CURDIR):/docs squidfunk/mkdocs-material build --site-dir $(SITE_DIR)
