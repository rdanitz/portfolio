<project>
  <div class="pure-g">
    <div class="pure-u-1 project-descr">
      <h1 class="project-header">{ opts.bind.title }</h1>
    </div>

    <div class="pure-u-7-8 project-images" each={ i in _.zip(_.compact(opts.bind.description.split('$')), _.range(opts.bind.images)) } >
      <div class="project-text">
        <raw content={ i[0] || '' } ></raw>
      </div>
      <figure>
        <img src="images/{ parent.opts.bind.name }/{ i[1] }.jpg" ></img>
        <figcaption></figcaption>
      </figure>
    </div>
   
    <div class="pure-u-1-8 nav2 noselect">
      <span><a href="#gallery">^</a></span>
    </div>
  </div>
  
  <script type="coffeescript">
    self = @
  </script>
</project>
