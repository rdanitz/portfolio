<main>
  <div if={ show == 'gallery' } >
    <gallery projects={ projects } />
  </div>

  <div if={ show == 'project' } >
    <project bind={ current } />
  </div>

  <div if={ show == 'about' } >
    <about />
  </div>
  
  <script type="coffeescript"> 
    self = @

    @show = 'gallery'
    @projects = projects
    @current = projects[0]
    @project = (name) -> _.first (_.filter self.projects, (i) -> i.name == name)

    @to = (to, name) ->
      switch to
        when ''        then self.show = 'gallery'
        when 'gallery' then self.show = 'gallery'
        when 'about'   then self.show = 'about'
        when 'project' 
          self.show = 'project'
          self.current = self.project name
      riot.update()

    f = (to, name) -> self.to to, name
    riot.route f 
    riot.route.start true
  </script>
</main>
