<project>
  <div class="pure-g">
    <div class="pure-u-3-4">
      <div class="project-image noselect2">
        <img src={ project.portraits[current] } ></img>
      </div>
    </div>
   
    <div class="pure-u-1-4">
      <div class="project-descr">
        <h1 class="project-header">{ project.title }</h1>
        <div class="project-text">
          <p>{ project.description }</p>
        </div>
      </div>
    </div>
    
    <div class="pure-u-3-4">
      <div class="nav1 noselect">
        <span><a onclick={ prev } >&lt;</a></span>&nbsp;&nbsp;
        <span><a onclick={ next } >&gt;</a></span>
      </div>
    </div>
    
    <div class="pure-u-1-4">
      <div class="nav2 noselect">
        <span><a href="#gallery">^</a></span>
      </div>
    </div>
  </div>
  
  <script type="coffeescript">
    self = @
    @current = 0
    @project = opts.bind
    @prev = () -> self.current = (self.current - 1 + _.size self.project.portraits) % (_.size self.project.portraits)
    @next = () -> self.current = (self.current + 1) % (_.size self.project.portraits)
  </script>
</project>
