DOWNLOAD_MODEL = 

.SECONDARY:

models/%.gguf:
	ln -sf $$(huggingface-cli download NousResearch/Hermes-2-Pro-Mistral-7B-GGUF Hermes-2-Pro-Mistral-7B.$$(echo ${*} | tr '[:lower:]' '[:upper:]').gguf) $@

NAME = adrienbrault/nous-hermes2pro

.PHONY: create/%
create/%: models/%.Modelfile models/%.gguf
	ollama create ${NAME}:${*} -f models/${*}.Modelfile

.PHONY: create-tools/%
create-tools/%: models/%-Modelfile-tools create/%
	ollama create ${NAME}:${*}-tools -f models/${*}-Modelfile-tools

.PHONY: create-json/%
create-json/%: models/%-Modelfile-json create/%
	ollama create ${NAME}:${*}-json -f models/${*}-Modelfile-json

.PHONY: push/%
push/%: create/%
	ollama push ${NAME}:${*}

.PHONY: push-tools/%
push-tools/%: create-tools/%
	ollama push ${NAME}:${*}-tools

.PHONY: push-json/%
push-json/%: create-json/%
	ollama push ${NAME}:${*}-json

models/%-Modelfile-tools:
	cat Modelfile-tools | FROM=${NAME}:${*} envsubst | tee ${@}

models/%-Modelfile-json:
	cat Modelfile-json | FROM=${NAME}:${*} envsubst | tee ${@}

models/%.Modelfile:
	cat Modelfile | FROM=${*}.gguf envsubst | tee ${@}

QUANTS = Q{2_K,3_K_L,3_K_M,3_K_S,4_0,4_K_M,4_K_S,5_0,5_K_M,5_K_S,6_K,8_0}
VARIANTS = {,-tools,-json}
ALL = ${QUANTS}${VARIANTS}

.PHONY: tags
tags:
	echo ${ALL} | tr ' ' '\n' | xargs -n1 -I{} echo ${NAME}:{}

push-%-all:
	$(MAKE) push${VARIANTS}/${*}

push-all:
	$(MAKE) push-${QUANTS}-all