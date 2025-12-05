CONFIG_FILE ?= pancake.config

ifeq ($(shell test -f $(CONFIG_FILE) && echo exists), exists)
    include $(CONFIG_FILE)

    $(info Loaded PANCAKE config from $(CONFIG_FILE))
    ifneq ($(MICROKIT_SDK),)
        $(info   Build SDK: $(MICROKIT_SDK))
    endif
    ifneq ($(MICROKIT_BOARD),)
        $(info   Build Board: $(MICROKIT_BOARD))
    endif
    ifneq ($(MICROKIT_CONFIG),)
        $(info   Build Config: $(MICROKIT_CONFIG))
    endif
else
    $(info config file $(CONFIG_FILE) not found, using environment variables)
endif

export MICROKIT_SDK
export MICROKIT_BOARD
export MICROKIT_CONFIG
