try:
    from smileys import SMILEYS
except:
    pass

try:
    from secretsmileys import SECRETSMILEYS
except:
    pass

DEBUG = True
TEMPLATE_DEBUG = True

DEBUGLEVEL = 2
DEBUGFILE = "/home/vagrant/logs/django-error.log"

SOUTH_DATABASE_ADAPTERS = {
    'default': "south.db.mysql"
}

DATABASES = {
    'default': {
            'ENGINE':'django.db.backends.mysql',
            'NAME':'demovibes',
            'USER':'demovibes',
            'PASSWORD':'demovibes',
            'HOST':'127.0.0.1',
            'PORT':'3306',
    }
}

PASSWORD_HASHERS = [
    'django.contrib.auth.hashers.PBKDF2PasswordHasher',
    'django.contrib.auth.hashers.PBKDF2SHA1PasswordHasher',
    'django.contrib.auth.hashers.SHA1PasswordHasher',
    'django.contrib.auth.hashers.MD5PasswordHasher',
    'django.contrib.auth.hashers.CryptPasswordHasher',
]

USE_FULLTEXT_SEARCH = False
SEARCH_LIMIT = 50

TIME_ZONE = 'UTC'
LANGUAGE_CODE = 'en-us'
USE_I18N = False

SITE_ID = 1

ACCOUNT_ACTIVATION_DAYS = 30

EMAIL_HOST = "localhost"
DEFAULT_FROM_EMAIL = "noreply@demovibes"
FILE_UPLOAD_PERMISSIONS = 0644

ADMIN_NOTIFY_ON_NEW_USER = 0
USER_SEND_CONF_OK = 1

ARTIST_AUTO_APPROVE_UPLOADS = True

TAG_CLOUD_MIN_COUNT = 2

UWSGI_EVENT_SERVER = ("127.0.0.1", 3032)
UWSGI_EVENT_SERVER_HTTP = "http://localhost:8080/demovibes/ajax/monitor/new/"

MAX_ONELINER_LENGTH = 256

FORUM_MAIL_PREFIX = "[demovibes] "

ADMIN_MEDIA_PREFIX = '/admin/'
DOCUMENT_ROOT = '/home/vagrant/demovibes/static/'
MEDIA_URL = '/static/'
MEDIA_ROOT = '/home/vagrant/'

STATIC_URL = '/static/'
STATIC = '/static/'

STATIC_ROOT = '/home/vagrant/demovibes/static/'

CACHE_BACKEND = 'memcached://127.0.0.1:11211/'

# Make this unique, and don't share it with anybody.
SECRET_KEY = 'laugh with me!'

SONG_SELFQUEUE_DISABLED = False
SONG_SELFVOTE_DISABLED = False

TEMPLATE_DIRS = (
    '/home/vagrant/demovibes/templates/local',
    '/home/vagrant/demovibes/templates/global',
    '/home/vagrant/demovibes/templates/pyenv',
)

JINJA2_TEMPLATE_DIRS = (
    '/home/vagrant/demovibes/templates/jinja/local',
    '/home/vagrant/demovibes/templates/jinja/global',
)

FLASH_STREAM_URL = "http://demovibes:8000/nectarine"

SONG_LOCK_TIME = { 'days' : 0, 'hours' : 0, 'minutes' : 0 }
SONG_LOCK_TIME_VOTE = { 'days' : 0, 'hours' : 0, 'minutes' : 0 }
SONG_LOCK_TIME_RANDOM = { 'days' : 0, 'hours' : 0, 'minutes' : 0 }

from webview.song_locktime import calc_songlock
SONG_LOCKTIME_FUNCTION = calc_songlock

MAX_SONG_LENGTH = False
DEFAULT_CHARSET = "utf-8"
PLAY_JINGLES = False

DEFAULT_CSS = MEDIA_URL + "themes/legacy/style.css"

USE_EVENTFUL = False

MIN_QUEUE_SONGS_LIMIT = 12
# Maximum number of songs a user can have in the queue at the same time.
SONGS_IN_QUEUE = 12
SONGS_IN_QUEUE_LOWRATING = {'limit': 12, 'lowvote':1}

SHORTEN_ONELINER_LINKS = 1

FILE_UPLOAD_PERMISSIONS = 0644

HAYSTACK_SEARCH_ENGINE='whoosh'
HAYSTACK_WHOOSH_PATH='/home/vagrant/whoosh/'

HAYSTACK_SEARCH_RESULTS_PER_PAGE = 50
HAYSTACK_ITERATOR_LOAD_PER_QUERY = 100
HAYSTACK_INCLUDE_SPELLING = False

ONELINER_PER_SMILEY_LIMIT = 3
ONELINER_TOTAL_SMILEY_LIMIT = 6

SESSION_ENGINE = "django.contrib.sessions.backends.cached_db"

from settings_logging import LOGGING

NGINX = {
    "memcached" : True,
}

SESSION_COOKIE_SECURE = True

OPENID_BASE_URI = "http://localhost:8080"

import datetime
NEW_USER_MUTE_TIME = datetime.timedelta(minutes=10)

BANTIME_MAX = 6048000
BAN_ANNOUNCE = True

SONG_DOWNLOAD_LIMIT = {
    "CHEROKEE": {
    #    # Cherokee secure url shared key
    #    # The secure url root should point to static folder.
    #    # See http://www.cherokee-project.com/doc/modules_handlers_secdownload.html for more info
    #    "KEY": "",
    #    "PATH": "",
    #    # IF defined, will alter default file url with re.sub(r1, r2, url)
    #    "REGEX": ("", ""),
    },
    "NGINX": {
        ## Use X-Accel option for secure download - base URL to use
        # "URL" : "",
        # "RATELIMIT": 2048,
        # "DOWNLOADWINDOW": 10*60
        ## IF defined, will alter default file url with re.sub(r1, r2, url)
        # "REGEX": ("", ""),
    },
    "LIMITS": {
        #'admin': {'number': 30, 'seconds': 60*60*24},
        #'Group name': {'number': 15, 'seconds': 60*60*24},
        #'default': {'number': 0, 'seconds': 60*60*24},
        #'staff': {'number': 3, 'seconds': 60*60*24},
    },
    "LIMIT_REACHED_URL": "/static/badman.html",
    "TYPE": "NGINX",
}
