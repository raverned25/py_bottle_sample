import functools
from bottle import default_app
from bottle import Bottle, run, debug, static_file, template, jinja2_view
from bottle import get, post, request, route

import os, sys


dirname = os.path.dirname(sys.argv[0])

app = Bottle()

view = functools.partial(jinja2_view, template_lookup=['views2'])


@app.route('/static/css/<filename:re:.*\.css>')
def css(filename):
	return static_file(filename, root='static/css')

@app.route("/static/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
def font(filepath):
    return static_file(filepath, root="static/font")

@app.route("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="static/img")


@app.route('/static/js/<filename:re:.*\.js>')
def js(filename):
	return static_file(filename, root='static/js')



@app.route('/')
@app.route('/home')
@view('index.html')
def home():
    data = {"menu":"home"}
    return data




@app.route('/about')
@view('about.html')
def about():
    data = {"menu":"about"}
    return data

@app.route('/login') # or @route('/login')
@view('login.html')
def login():

    data = {"menu" : "login"}

    return data

@app.route('/login', method='POST') # or @route('/login', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')
    if username and password:
        return f"<p>Your username is '{username}' with password {password}.</p>"
    else:
        return "<p>Login failed.</p>"


if __name__ == '__main__':
    app.run(reloader=True, debug=False)

# application = default_app()
