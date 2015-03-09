<main>
  <div if={ show == 'gallery' } >
    <gallery projects={ projects }
             me={ me }
             you={ you } >
    </gallery>
  </div>

  <div if={ show == 'project' } >
    <div each={ projects } if={ parent.current == title }>
      <project bind={ parent.project(title) }>
      </project>
    </div>
  </div>

  <div if={ show == 'about' } >
    <about bind={ me } >
    </about>
  </div>
  
  <script type="coffeescript"> 
    self = @

    @show = 'gallery'

    @me = me
    @you = you
    @current = ''
    @projects = projects
    @project = (title) -> _.first (_.filter self.projects, (i) -> i.title == title)

    @to = (to, name) ->
      switch to
        when ''        then self.show = 'gallery'
        when 'gallery' then self.show = 'gallery'
        when 'about'   then self.show = 'about'
        when 'project' 
          self.show = 'project'
          self.current = name 
      riot.update()

    f = (to, name) -> self.to to, name
    riot.route f 
    riot.route.exec f
  </script>
</main>
