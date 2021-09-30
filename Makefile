KINDS := jp-ac jp-bank jp-go jp-jpnic jp-lg jp-registrar jp-topix jp-vce
LIST_FILES := $(addsuffix .json, $(KINDS))
TODAY := $(shell date +%Y%m%d)

.PHONY: all
all: prepare $(LIST_FILES) after

prepare:
	-@rm $(CACHE_DIR)/tcp.json

%.json:
	bundle exec check $(LIST_DIR)/$@ $(RESULTS_DIR)/$@ $(CACHE_DIR)/tcp.json

after:
	-@rm $(CACHE_DIR)/tcp.json
