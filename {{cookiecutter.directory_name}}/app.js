const fs = require('fs');
const path = require('path');
const express = require('express');
{% if cookiecutter.template_language == "Mustache" -%}
const mustacheExpress = require('mustache-express');
{% endif -%}

const app = express();

{% if cookiecutter.template_language == "Mustache" -%}
app.engine('mustache', mustacheExpress());
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'mustache')
app.set('layout', 'layout');
{% endif -%}

app.use('/static', express.static('static'));

// put routes here

app.listen(3000, function () {
    console.log('Express running on http://localhost:3000/.')
});
