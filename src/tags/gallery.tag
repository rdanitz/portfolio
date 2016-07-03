<gallery>
  <div class="pure-g gallery" >
    <div class="pure-u-1-3">
      <div class="frame">
        <div class="me">
          <span><a href="#about">{ me.name }</a></span>
        </div>
      </div>

      <myframe project={ projects[0] } />
      <myframe project={ projects[1] } />
    </div>

    <div class="pure-u-1-3">
      <myframe project={ projects[2] } />
      <myframe project={ projects[3] } />
      <myframe project={ projects[4] } />
    </div>

    <div class="pure-u-1-3">
      <myframe project={ projects[5] } />
      <myframe project={ projects[6] } />
      <myframe project={ projects[7] } />

      <div class="frame">
        <div class="you">
          <span><a href={ you.github } >&copy;{ you.name }</a></span>
        </div>
      </div>
    </div>
  </div>

  <script type="coffeescript">
    self = @
    @me = opts.me
    @you = opts.you
    @projects = opts.projects
    @index = (title) -> _.indexOf (_.pluck self.projects, 'title'), title
  </script>
</gallery>
