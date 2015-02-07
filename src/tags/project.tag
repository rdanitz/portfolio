<project>
  <div class="pure-g max-height">
    <div class="pure-u-3-4 vertical-center-wrapper">
      <div class="project-image">
        <img width="100%" src="{ project.portrait }"></img>
      </div>
    </div>
   
    <div class="pure-u-1-4">
      <div class="project-descr">
        <h1 class="project-header">{ project.name }</h1>
        <div class="project-text vertical-center-wrapper">
          <p>{ project.description }</p>
        </div>
      </div>
    </div>
    
    <div class="pure-u-3-4">
      <div class="nav1">
        <span><a>&lt;</a></span>&nbsp;&nbsp;<span><a>&gt;</a></span>
      </div>
    </div>
    
    <div class="pure-u-1-4">
      <div class="nav2">
        <span><a href="#">^</a></span>
      </div>
    </div>
  </div>
  
  <script type="coffeescript">
    @project = opts.bind
  </script>
</project>