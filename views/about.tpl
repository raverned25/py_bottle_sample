%def title():
PyBottle - About
%end


%def menu():
<a class="navbar-item" href="/home">Home</a>
<a class="navbar-item is-active" href=" /about">About</a>
<a class="navbar-item" href=" /login">Login</a>
%end


%def hero():
<p class="title">About</p>
<p class="subtitle">First App using Bottle Python and Bulma CSS</strong>!</p>
%end



%def content():
<div class="content">
    <div class="columns">
        <div class="column">
            <h1> About </h1>
            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla accumsan, metus ultrices eleifend
                gravida,
                nulla nunc varius lectus, nec rutrum justo nibh eu lectus. Ut vulputate semper dui. Fusce erat odio,
                sollicitudin vel erat vel, interdum mattis neque. </p>

        </div>
        <div class="column">
            <h2> Blah Blah Blah </h2>
            <p> Curabitur accumsan turpis pharetra <strong> augue tincidunt </strong> blandit. Quisque condimentum
                maximus
                mi, sit amet commodo arcu rutrum id. Proin pretium urna vel cursus venenatis. Suspendisse potenti.
                Etiam
                mattis sem rhoncus lacus dapibus facilisis. Donec at dignissim dui. Ut et neque nisl. </p>
        </div>
    </div>
    <hr>
    <p> Phasellus porttitor enim id metus volutpat ultricies. Ut nisi nunc, blandit sed dapibus at, vestibulum in
        felis. Etiam iaculis lorem ac nibh bibendum rhoncus. Nam interdum efficitur ligula sit amet ullamcorper.
        Etiam tristique, leo vitae porta faucibus, mi lacus laoreet metus, at cursus leo est vel tellus. Sed ac
        posuere est. Nunc ultricies nunc neque, vitae ultricies ex sodales quis. Aliquam eu nibh in libero accumsan
        pulvinar. Nullam nec nisl placerat, pretium metus vel, euismod ipsum. Proin tempor cursus nisl vel
        condimentum. Nam pharetra varius metus non pellentesque. </p>
    <p> Aliquam sagittis rhoncus vulputate. Cras non luctus sem, sed tincidunt ligula. Vestibulum at nunc elit.
        Praesent aliquet ligula mi, in luctus elit volutpat porta. Phasellus molestie diam vel nisi sodales, a
        eleifend augue laoreet. Sed nec eleifend justo. Nam et sollicitudin odio. </p>
</div>
%end

%rebase content title=title, hero=hero, content=content, menu=menu