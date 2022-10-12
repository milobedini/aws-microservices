#!/usr/bin/env python

# Above line is to tell file to run as a script.

import fire

from mylib.logic import wiki

# Only run code if run as a script:
if __name__ == "__main__":
    fire.Fire(wiki)

# Takes flags such as name and length: ./cli-fire.py --name="Napoleon" --length=10
