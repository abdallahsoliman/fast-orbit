import os

class Config(object):
    MEDIA_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'media')
