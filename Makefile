# REV09: Wed 17 Aug 2022 10:00
# REV08: Mon 30 May 2022 10:00
# REV07: Tue 03 Aug 2021 09:00
# REV05: Mon 19 Jul 2021 13:00
# REV02: Tue 15 Jun 2021 11:00
# START: Mon 15 Feb 2021 09:00

SITEURL="template.vlsm.org"

ALL: 000.md
	@echo "xyzzy... plugh"

000.md: 000.pmd _config.yml Gemfile _layouts/default.html Makefile index.md about.md tips.md links.md \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 000.pmd > 000.md

.siteHack: _site/sitemap.xml
	@bash  .siteHack $(SITEURL)
	@touch .siteHack

.phony: ALL

