#!/usr/bin/python3

from recoll import recoll

db = recoll.connect()
query = db.query()
nres = query.execute("Epu")
results = query.fetchmany(20)
for doc in results:
    print("\n<a href=%s>%s</a>\n" % (doc.url, doc.title))

