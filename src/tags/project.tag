<project>
  <div class="pure-g">
    <div class="pure-u-3-4 project-image noselect">
      <figure>
        <img src="images/{ opts.bind.name }/{ current }.jpg" ></img>
        <figcaption></figcaption>
      </figure>
    </div>
   
    <div class="pure-u-1-4 project-descr">
      <h1 class="project-header">{ opts.bind.title }</h1>
      <div class="project-text">
        <raw content={ opts.bind.description } ></raw>
      </div>
    </div>
    
    <div class="pure-u-3-4 nav1 noselect">
      <span><a onclick={ prev } >&lt;</a></span>&nbsp;&nbsp;
      <span><a onclick={ next } >&gt;</a></span>
    </div>
    
    <div class="pure-u-1-4 nav2 noselect">
      <span><a href="#gallery">^</a></span>
    </div>
  </div>
  
  <script type="coffeescript">
    self = @
    self.current = 0

    @prev = () -> self.current = (self.current - 1 + opts.bind.images) % opts.bind.images || 0
    @next = () -> self.current = (self.current + 1) % opts.bind.images || 0

    Mousetrap.bind 'up', () -> riot.route('#')

    Mousetrap.bind 'left', () ->
      self.prev()
      riot.update()

    Mousetrap.bind 'right', () ->
      self.next()
      riot.update()

  </script>
</project>
