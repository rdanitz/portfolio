<about>
  <div class="pure-g">
    <div class="pure-u-2-5">
      <div class="pure-u">
        <div class="about-portrait noselect">
          <img riot-src={ me.portrait } width="100%"></img>
        </div>
      </div>
      <div class="pure-u">
        <div class="about-abstract">
          <raw content={ me.abstract }></raw>
        </div>
      </div>
    </div>
    
    <div class="pure-u-3-5">
      <div class="about-descr">
        <h1 class="about-header">CV</h1>
        <div class="about-cv">
          <raw content={ me.cv }></raw>
        </div>
      </div>
      
      <div class="pure-u-1">
        <div class="nav2 noselect">
          <span><a href="#gallery">^</a></span>
        </div>
      </div>
    </div>
  </div>
  
  <script type="coffeescript">
    self = @
    @me = opts.bind
  </script>
</about>
