<gallery>
  <div class="pure-g">
    <div class="pure-u-1-5 frame vertical-center-wrapper" each={ frames() }>
      <div class="frame-text" if={ description }>
        <p class="frame-text-inner"><a href="#{ name }">{ description }</a></p>
      </div>
      <div class="frame-image" if={ thumb }>
        <img src={ thumb ? thumb : 'images/zero.png' } width="100%"></img>
      </div>
      <span class={ _class } if={ !thumb }><a href="">{ name }</a></span>
    </div>
  </div>

  <script type="coffeescript">
    @projects = opts.projects
    @frames = () -> 
      [].concat (@projects.slice 0, Math.ceil(_.size(@projects)/2)),
                opts.me,
                (@projects.slice Math.ceil(_.size(@projects)/2)),
                opts.you
  </script>
</gallery>
