#!/usr/bin/env python

# Above line is to tell file to run as a script.

import fire

from mylib import logic

# Only run code if run as a script:
if __name__ == "__main__":
    fire.Fire(logic)

# Takes flags such as name and length: ./cli-fire.py --name="Napoleon" --length=10

""" We have now allowed it to take in the whole logic module so it can search or 
look up a particular person.
e.g. 
./cli-fire.py search_wiki "Barrack"
./cli-fire.py wiki "Napoleon" """
