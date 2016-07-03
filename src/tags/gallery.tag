<gallery>
  <div class="pure-g gallery" >
    <div class="pure-u-1-3">
      <div class="frame">
        <div class="me">
          <span><a href="#about">{ me.name }</a></span>
        </div>
      </div>
      
      <!-- <div class="frame"  -->
      <!--      each={ projects } > -->
      <!--   <div class="frame&#45;image noselect"> -->
      <!--     <img riot&#45;src={ thumb } width="100%"></img> -->
      <!--   </div> -->
      <!--   <div class="frame&#45;text"> -->
      <!--     <p><a href="#project/{ title }">{ abstract }</a></p> -->
      <!--   </div> -->
      <!-- </div> -->
      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[0].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[0].title }">{ projects[0].abstract}</a></p>
        </div>
      </div>

      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[1].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[1].title }">{ projects[1].abstract}</a></p>
        </div>
      </div>
    </div>

    <div class="pure-u-1-3">
      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[2].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[2].title }">{ projects[2].abstract}</a></p>
        </div>
      </div>

      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[3].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[3].title }">{ projects[3].abstract}</a></p>
        </div>
      </div>

      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[4].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[4].title }">{ projects[4].abstract}</a></p>
        </div>
      </div>
    </div>

    <div class="pure-u-1-3">
      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[5].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[5].title }">{ projects[5].abstract}</a></p>
        </div>
      </div>

      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[6].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[6].title }">{ projects[6].abstract}</a></p>
        </div>
      </div>

      <div class="frame">
        <div class="frame-image noselect">
          <img riot-src={ projects[7].thumb } width="100%"></img>
        </div>
        <div class="frame-text">
          <p><a href="#project/{ projects[7].title }">{ projects[7].abstract}</a></p>
        </div>
      </div>

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
