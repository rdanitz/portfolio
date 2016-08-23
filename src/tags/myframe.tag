<myframe>
  <div class="frame">
    <div class="frame-image noselect">
      <img riot-src="images/{ project.name }/thumb.jpg" width="100%"></img>
    </div>
    <div class="frame-text">
      <p><a href="#project/{ project.name }">{ project.abstract}</a></p>
    </div>
  </div>

  <script type="coffeescript">
    self = @
    @project = opts.project
  </script>
</myframe>
