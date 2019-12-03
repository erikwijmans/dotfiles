import os.path as osp
import os
import re

skynet_nodes = [
    "walle",
    "t1000",
    "gideon",
    "jill",
    "hal",
    "vicki",
    "smith",
    "bender",
    "tars",
    "jarvis",
    "breq",
    "ash",
    "eva",
    "c3po",
    "johnny5",
]
GENERATOR_PATTERN = "### SKYNET GENERATOR ###"
pattern_searcher = re.compile("###\sSKYNET\sGENERATOR\s###$", flags=re.MULTILINE)
DISCLAIMER = "# Managed by skynet generator, do not modify anything bellow\n"


def main():
    HOME = os.getenv("HOME")
    config_file = osp.join(HOME, ".ssh/config")
    assert osp.exists(config_file), "Must already have created an ssh config file"

    with open(config_file, "r") as f:
        current_text = f.read()
        if pattern_searcher.findall(current_text) is not None:
            before_pattern = pattern_searcher.split(current_text)[0]
        else:
            before_pattern = current_text

    new_config = before_pattern
    new_config += "\n\n"
    new_config += GENERATOR_PATTERN
    new_config += "\n"
    new_config += DISCLAIMER
    new_config += "\n"
    for node in skynet_nodes:
        new_config += f"""
Host skynet-{node}
    HostName {node}.cc.gatech.edu
    User ewijmans3
"""

    new_config += "\n"

    with open(config_file, "w") as f:
        f.write(new_config)


if __name__ == "__main__":
    main()
