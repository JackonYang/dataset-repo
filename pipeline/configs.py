import os

PROJ_DIR = os.path.abspath(
    os.path.join(os.path.dirname(__file__), '..'))

DATA_DIR = os.path.join(PROJ_DIR, 'raw-data')
META_DIR = os.path.join(PROJ_DIR, 'metas')

MD_NOTES_DIR = os.path.join(PROJ_DIR, '../01-zettelkasten/07-dataset-notes')
MD_NOTES_DATA_REL_ROOT = '../../..'

TAG_MAP_DIR = os.path.join(PROJ_DIR, '../01-zettelkasten/06-Content Maps')


if __name__ == '__main__':
    print(PROJ_DIR)
    print('exists: %s' % os.path.exists(PROJ_DIR))
    # print(PDF_DIR)
    # print(META_DIR)
