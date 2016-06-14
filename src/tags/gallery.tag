<gallery>
  <div class="pure-g gallery" >

    <div class="pure-u-1-3">
      <div class="frame" 
           each={ projects } >
        <div class="frame-image noselect">
          <img riot-src={ thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ title }">{ abstract }</a></p>
        </div>
      </div>
    </div>

    <div class="pure-u-1-3">
      <div class="frame">
        <div class="me">
          <span><a href="#about">{ me.name }</a></span>
        </div>
      </div>
    </div>

    <div class="pure-u-1-3">
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
