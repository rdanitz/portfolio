<projects>
  <div class="pure-g">
    <div class="pure-u-1-5 frame vertical-center-wrapper" each={ first(opts.projects) }>
      <div class="frame-text">
        <p><a href="#/project">This is some text about the project.</a></p>
      </div>
      <div class="frame-image">
        <img src="images/thumb2.png" width="100%" if={ id % 2 == 0 }></img>
        <img src="images/thumb3.png" width="100%" if={ id % 2 == 1 }></img>
      </div>
    </div>

    <div class="pure-u-1-5 frame vertical-center-wrapper">
      <span class="anna"><a>Anna Sundukova</a></span>
    </div>

    <div class="pure-u-1-5 frame vertical-center-wrapper" each={ last(opts.projects) }>
      <div class="frame-text">
        <p><a href="#/projects/foo">This is some text about the project.</a></p>
      </div>
      <div class="frame-image">
        <img src="images/thumb2.png" width="100%" if={ id % 2 == 0 }></img>
        <img src="images/thumb3.png" width="100%" if={ id % 2 == 1 }></img>
      </div>
    </div>
    
    <div class="pure-u-1-5 frame vertical-center-wrapper">
      <span class="robert"><a href="#">@rdanitz</a></span>
    </div>
  </div>

  <script type="coffeescript">
    @first = (projects) ->
      projects.slice 0, Math.ceil(_.size(projects)/2)
    
    @last = (projects) ->
      console.log (projects.slice Math.ceil(_.size(projects)/2))
      projects.slice Math.ceil(_.size(projects)/2)
  </script>
</projects>
