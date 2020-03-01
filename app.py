from bottle import Bottle, run, template, \
    get, post, request, route, debug, static_file

import os, sys

dirname = os.path.dirname(sys.argv[0])

app = Bottle()



# # Static Routes
# @get("/static/css/<filepath:re:.*\.css>")
# def css(filepath):
#     return static_file(filepath, root="static/css")

# @get("/static/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
# def font(filepath):
#     return static_file(filepath, root="static/font")

# @get("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
# def img(filepath):
#     return static_file(filepath, root="static/img")

# @get("/static/js/<filepath:re:.*\.js>")
# def js(filepath):
#     return static_file(filepath, root="static/js")




@app.route('/static/css/<filename:re:.*\.css>')
def css(filename):
	return static_file(filename, root='static/css')

@app.route('/static/js/<filename:re:.*\.js>')
def js(filename):
	return static_file(filename, root='static/js')



@app.route('/')
def index():
    
    print(dirname)
    data = {"developer_name":"Ahmedur Rahman Shovon", "developer_organization":"Datamate Web Solutions"}
    
    return template('index', data = data)

    
    # return template('body')
    # return template('index', name='John')


@app.route('/login') # or @route('/login')
def login():
    return '''
        <form action="/login" method="post">
            Username: <input name="username" type="text" />
            Password: <input name="password" type="password" />
            <input value="Login" type="submit" />
        </form>
    '''

@app.route('/login', method='POST') # or @route('/login', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')
    if username and password:
        return f"<p>Your username is '{username}' with password {password}.</p>"
    else:
        return "<p>Login failed.</p>"



if __name__ == '__main__':
    app.run(reloader=True, debug=True)    