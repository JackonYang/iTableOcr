import yaml
import os
import codecs
import markdown

from jinja2 import Environment, FileSystemLoader

DATASETS_ROOT = os.path.abspath(
    os.path.join(__file__, '../../'))

META_ROOT = os.path.join(DATASETS_ROOT, 'metadata')
OUT_FILENAME = os.path.join(DATASETS_ROOT, 'README.md')
TEMPLATE_DIR = os.path.join(DATASETS_ROOT, 'templates')
TEMPLATE_NAME = 'readme.md'


def iter_dataset_by_meta(meta_root):
    for name in sorted(os.listdir(meta_root)):
        if name.startswith('.'):
            continue

        meta_path = os.path.join(meta_root, name)
        yield name, meta_path


def load_meta(meta_path):
    with open(meta_path, 'r') as f:
        return yaml.safe_load(f)


def render_md(template_dir, template_name, data, out_filename):
    env = Environment(loader=FileSystemLoader(template_dir))
    template = env.get_template(template_name)

    content = template.render(data)

    with codecs.open(out_filename, 'w', 'utf8') as f:
        f.write(content)

    print('success! saved in %s' % os.path.abspath(out_filename))


def main():
    dataset_list = []
    for name, meta_path in iter_dataset_by_meta(META_ROOT):
        meta = load_meta(meta_path)
        meta['description_html'] = markdown.markdown(meta['description'])
        dataset_list.append(meta)

    data = {
        'dataset_list': dataset_list
    }

    render_md(TEMPLATE_DIR, TEMPLATE_NAME, data, OUT_FILENAME)


if __name__ == '__main__':
    main()
