from fabric.api import *

env.hosts = [
          'tasneem.site',
]
env.user = 'admin'

def ship():
    run('mkdir -p /var/www/html/css')
    run('mkdir -p /var/www/html/img')
    run('mkdir -p /var/www/html/js')
    put('/Users/tasneemfarag/desktop/holbertonschool-twitter_clone/*','/var/www/html/')
   # put("/Users/tasneemfarag/desktop/holbertonschool-twitter_clone/css/style.css", "var/www/html/style.css")


