%rebase layout 

<section class="hero is-primary">
    <div class="hero-head">
        <nav class="navbar">
            <div class="container">
                <div class="navbar-brand">
                    <a class="navbar-item" id="brand-logo" href="/">
                        <!-- <img src="https://bulma.io/images/bulma-type-white.png" alt="Logo"> -->
                            PyBottle
                        </a>
                    <span class="navbar-burger burger" data-target="navbarMenuHeroB">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                </div>
                <div id="navbarMenuHeroB" class="navbar-menu">
                    <div class="navbar-end">
                        %menu()
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div class="hero-body">
        <div class="container has-text-centered">
            %hero()
        </div>
    </div>
</section>

<section class="section" id="content">
    <div class="container">
        %content()
    </div>
</section

<footer class="footer">
    <div class="content has-text-centered"></div>
</footer>