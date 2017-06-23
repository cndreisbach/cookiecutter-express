#!/usr/bin/env sh
{% if cookiecutter.template_language == "None" %}
rm -r views
{% endif %}

npm install express --save
{% if cookiecutter.template_language == "Mustache" %}
npm install mustache-express --save
{% endif %}

{% if cookiecutter.use_sequelize == "y" %}
npm install sequelize --save
{% endif %}

{% if cookiecutter.database == "PostgreSQL" %}
npm install --save pg pg-hstore
{% elif cookiecutter.database == "MySQL" %}
npm install --save mysql2
{% elif cookiecutter.database == "SQLite" %}
$ npm install --save sqlite3
{% endif %}

{% if cookiecutter.use_sequelize == "y" and cookiecutter.run_sequelize_init == "y" %}
sequelize init
{% endif %}
