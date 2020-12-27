import json

def doc_iter(jsonl_file='data.sample.jsonl.japanese'):
    with open(jsonl_file) as f:
        for line in f:
            doc = json.loads(line.strip())
            yield doc['title'], doc['content'], doc['summary']

if __name__ == "__main__":
    data = []
    # template = '''<p style="line-height:1.6px; font-size:2.5em; font-family: "Trebuchet MS", Verdana, sans-serif">{}</p>'''
    template = '{}'
    for doc_title, doc_content, doc_summary in doc_iter():
        obj = {
            'data': {
                'header': template.format(doc_title),
                'content': template.format(doc_content),
                'summary': template.format(doc_summary)
            }
        }
        data.append(obj)

    with open('./bbc_japanese.json', 'w') as f:
        json.dump(data, f, indent=4, ensure_ascii=False)