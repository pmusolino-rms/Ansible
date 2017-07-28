#!/usr/bin/env python

import json
from pprint import pprint as pp

json_list = None
with open("/tmp/fpc.txt") as f:
  json_list = json.load(f)
print "JSON"
pp(json_list)
