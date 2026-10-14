import glob
import json
import os
import subprocess

ROOT = os.path.join('lib', 'l10n')
en = json.load(open(os.path.join(ROOT, 'app_en.arb'), encoding='utf-8'))
order = [k for k in en if not k.startswith('@')]


def on_main(path):
    try:
        out = subprocess.run(['git', 'show', 'origin/main:' + path.replace(os.sep, '/')], capture_output=True, check=True)
        return json.loads(out.stdout.decode('utf-8'))
    except (subprocess.CalledProcessError, ValueError):
        return {}


for path in sorted(glob.glob(os.path.join(ROOT, 'app_*.arb'))):
    code = os.path.basename(path)[4:-4]
    if code == 'en':
        continue
    data = json.load(open(path, encoding='utf-8'))
    main = on_main(path)
    for k in list(data):
        if k.startswith('@') or data[k] != en.get(k):
            continue
        if k in main:
            data[k] = main[k]
        else:
            del data[k]
    keys = [k for k in order if k in data] + [k for k in data if not k.startswith('@') and k not in order]
    lines = [f'  "@@locale": "{code}"'] + [f'  {json.dumps(k)}: {json.dumps(data[k], ensure_ascii=False)}' for k in keys]
    text = '{\n' + ',\n'.join(lines) + '\n}\n'
    json.loads(text)
    with open(path, 'w', encoding='utf-8', newline='\n') as f:
        f.write(text)
