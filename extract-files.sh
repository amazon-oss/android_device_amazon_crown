#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/audio.primary_amazon.mt8163.so)
            "${PATCHELF}" --add-needed "libamazonlog.so" "${2}"
            ;;
        vendor/lib/libaudiocomponentengine.so)
            "${PATCHELF}" --add-needed "libutilscallstack.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=crown
export DEVICE_COMMON=mt8163-common
export VENDOR=amazon

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
