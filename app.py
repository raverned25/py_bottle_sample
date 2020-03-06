from bottle import default_app
from bottle import route, run, debug, static_file, template


@route('/static/css/<filename:re:.*\.css>')
def css(filename):
	return static_file(filename, root='static/css')

@route("/static/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
def font(filepath):
    return static_file(filepath, root="static/font")

@route("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="static/img")


@route('/static/js/<filename:re:.*\.js>')
def js(filename):
	return static_file(filename, root='static/js')



@route('/')
@route('/home')
def index():

    data = {"menu" : "home"}
    return template('home', data)


@route('/about')
def about():
    data = {"menu":"about"}
    return template('about', data)



@route('/login') # or @route('/login')
def login():
    data = {"menu" : "login"}
    return template('login', data)


# @route('/login', method='POST') # or @route('/login', method='POST')
# def do_login():
#     username = request.forms.get('username')
#     password = request.forms.get('password')
#     if username and password:
#         return f"<p>Your username is '{username}' with password {password}.</p>"
#     else:
#         return "<p>Login failed.</p>"


if __name__ == '__main__':
    run(reloader=True, debug=True)

# application = default_app()
