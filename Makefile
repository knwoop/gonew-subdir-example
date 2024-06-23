BIN_DIR := $(shell pwd)/bin
GONEW   := $(abspath $(BIN_DIR)/gonew)

.PHONY: gonew
gonew: $(GONEW)
$(GONEW):
	go build -o $(GONEW) golang.org/x/tools/cmd/gonew

.PHONY: go-app
go-app: $(GONEW)
	@$(GONEW) github.com/knwoop/gonew-subdir-example/lib/template github.com/knwoop/gonew-subdir-example/app/$(app) ./app/$(app)
