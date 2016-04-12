{
    "target_defaults": {
        "configurations": {
            "Debug": {
                "defines": [
                    "$(inherited)",
                    "DEBUG",
                    "_DEBUG"
                ],
                "xcode_settings": {
                    "ONLY_ACTIVE_ARCH": "YES"
                }
            },
            "Release": {
                "defines": [
                    "$(inherited)",
                    "NDEBUG"
                ]
            }
        },
        "default_configuration": "Debug"
    },
    "targets": [
        {
            "include_dirs": [
                "substructure"
            ],
            "link_settings": {
                "libraries": []
            },
            "mac_bundle": 1,
            "mac_bundle_resources": [
                "<!@(sh scripts/list-resource-files.sh)"
            ],
            "sources": [
                "<!@(sh scripts/list-source-files.sh)"
            ],
            "target_name": "Example",
            "type": "executable",
            "xcode_settings": {
                "CLANG_ENABLE_MODULES": "YES",
                "CLANG_ENABLE_OBJC_ARC": "YES",
                "CODE_SIGN_IDENTITY": "iPhone Developer",
                "HEADER_SEARCH_PATHS": "$(inherited)",
                "INFOPLIST_FILE": "src/Info.plist",
                "IPHONEOS_DEPLOYMENT_TARGET": "9.0",
                "LD_RUNPATH_SEARCH_PATHS": "$(inherited) @executable_path/Frameworks",
                "SDKROOT": "iphoneos",
                "TARGETED_DEVICE_FAMILY": "1,2"
            }
        }
    ]
}