#!/usr/bin/env python
from app import create_app, db
from flask_script import Server, Manager
from flask_migrate import Migrate, MigrateCommand

app = create_app('default')

manager = Manager(app)
migrate = Migrate(app, db)

manager.add_command('db', MigrateCommand)
manager.add_command("runserver",  Server(host="localhost", port=8080))

if __name__ == '__main__':
    manager.run()
