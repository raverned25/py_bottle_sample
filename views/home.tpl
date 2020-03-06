%def title():
PyBottle - Home
%end


%def menu():
<a class="navbar-item is-active" href="/home">Home</a>
<a class="navbar-item" href=" /about">About</a>
<a class="navbar-item" href=" /login">Login</a>
%end


%def hero():
<p class="title">Hooooommmee</p>
<p class="subtitle">First App using Bottle Python and Bulma CSS</strong>!</p>
%end



%def content():
<div class="content">
    <div class="columns">
        <div class="column">
            <h1> Home </h1>
            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla accumsan, metus ultrices eleifend
                gravida,
                nulla nunc varius lectus, nec rutrum justo nibh eu lectus. Ut vulputate semper dui. Fusce erat odio,
                sollicitudin vel erat vel, interdum mattis neque. </p>
            <h2> Blah Blah Blah </h2>
            <p> Curabitur accumsan turpis pharetra <strong> augue tincidunt </strong> blandit. Quisque condimentum
                maximus
                mi, sit amet commodo arcu rutrum id. Proin pretium urna vel cursus venenatis. Suspendisse potenti.
                Etiam
                mattis sem rhoncus lacus dapibus facilisis. Donec at dignissim dui. Ut et neque nisl. </p>
        </div>
        <div class="column">
            <div class="card">
                <div class="card-content">
                    <p class="title">
                        “There are two hard things in computer science: cache invalidation, naming things, and
                        off-by-one errors.”
                    </p>
                    <p class="subtitle">
                        Jeff Atwood
                    </p>
                </div>
                <footer class="card-footer">
                    <p class="card-footer-item">
                        <span>
                            View on <a href="#">Twitter</a>
                        </span>
                    </p>
                    <p class=" card-footer-item">
                        <span>
                            Share on <a href="#">Facebook</a>
                        </span>
                    </p>
                </footer>
            </div>
        </div>
    </div>
</div>
%end

%rebase content title=title, hero=hero, content=content, menu=menu