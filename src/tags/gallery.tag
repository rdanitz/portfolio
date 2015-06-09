<gallery>
  <div class="pure-g gallery" >
    <div class="me-order frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5">
      <div class="me">
        <span><a href="#about">{ me.name }</a></span>
      </div>
    </div>

    <div class="frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5" 
         style="order: { 2 * parent.index(title) }; -webkit-order: { 2 * parent.index(title) };" 
         each={ projects } >
      <div class="frame-image noselect">
        <img riot-src={ thumb } width="100%"></img>
      </div>
      <div class="frame-text">
        <p><a href="#project/{ title }">{ abstract }</a></p>
      </div>
    </div>
    
    <div class="you-order frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5">
      <div class="you">
        <span><a href={ you.github } >&copy;{ you.name }</a></span>
      </div>
    </div>
  </div>

  <script type="coffee">
    self = @
    @me = opts.me
    @you = opts.you
    @projects = opts.projects
    @index = (title) -> _.indexOf (_.pluck self.projects, 'title'), title
  </script>
</gallery>
