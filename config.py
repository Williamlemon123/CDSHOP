import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config:
    SECRET_KEY = "sdkHHKGYITfjlqjluio23uaasdf42903"
    
    @staticmethod
    def init_app(app):
        pass

class LocalConfig(Config):
    SECRET_KEY = "sdkfjlasdf%$^asdf%^&qjluio23asdfu42903"
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://{}:{}@{}/{}'.format('root', '19981106', 'localhost', 'ecommercecd')
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = True

class DevConfig(Config):
    SECRET_KEY = "sdkfjlasdf%$^asdf%^&qjluio23asdfu42903"
    db_path = os.path.join(os.path.dirname(__file__), 'ecommercecd.db')
    db_uri = 'sqlite:///{}'.format(db_path)    
    SQLALCHEMY_DATABASE_URI= db_uri
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = True

config = {
    'local': LocalConfig,
    'dve': DevConfig,
    'default': LocalConfig
}
