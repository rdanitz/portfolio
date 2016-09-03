<gallery>
  <div class="pure-g gallery" >
    <div class="pure-u-1-3">
      <div class="frame">
        <div class="me">
          <span><a href="#about">{ me.name }</a></span>
        </div>
      </div>

      <myframe each={ projects.slice(0, n/3) } />
    </div>

    <div class="pure-u-1-3">
      <myframe each={ projects.slice(n/3, (2*n)/3) } />
    </div>

    <div class="pure-u-1-3">
      <myframe each={ projects.slice((2*n)/3, n) } />

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
    @n = projects.length
  </script>
</gallery>
