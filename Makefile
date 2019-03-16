.DEFAULT_GOAL := help

.PHONY: help
help:	## Show this help information
	@grep -E '^[\.a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: 
deploy: ## Run the playbook aka 
	ansible-playbook -i inventory -l laptops diggr_bid_workshop.yml
