<project>
  <div class="pure-g">
    <div class="pure-u-3-4 project-images" each={ i in _.range(opts.bind.images) } >
      <figure>
        <img src="images/{ parent.opts.bind.name }/{ i }.jpg" ></img>
        <figcaption></figcaption>
      </figure>
    </div>
   
    <div class="pure-u-1-4 project-descr">
      <h1 class="project-header">{ opts.bind.title }</h1>
      <div class="project-text">
        <raw content={ opts.bind.description } ></raw>
      </div>
    </div>
    
    <div class="pure-u-1-4 nav2 noselect">
      <span><a href="#gallery">^</a></span>
    </div>
  </div>
  
  <script type="coffeescript">
    self = @
  </script>
</project>
