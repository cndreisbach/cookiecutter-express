#!/usr/bin/env sh
{% if cookiecutter.template_language == "None" %}
rm -r views
{% endif %}

npm install express --save
{% if cookiecutter.template_language == "Mustache" %}
npm install mustache-express --save
{% endif %}
