#!/usr/bin/python3

import sys
from recoll import recoll

db = recoll.connect()
query = db.query()
# print("Keywords: ", end="",  file=sys.stderr)
# key = input();
args=sys.argv
key=args[1]
nres = query.execute(key)
results = query.fetchmany(5000)
for doc in results:
    print("<a href=%s>%s</a> <BR>" % (doc.url, doc.title))

