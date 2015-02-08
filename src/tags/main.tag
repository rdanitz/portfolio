<main>
  <div if={ show == 'gallery' } >
    <gallery projects={ projects }
             me={ me }
             you={ you } >
    </gallery>
  </div>

  <div if={ show == 'project' } >
    <project bind={ project } >
    </project>
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
    @projects = projects

    @project =
      title: ''
      abstract: ''
      description: ''
      thumb: ''
      portraits: ''

    @to = (to, id) ->
      switch to
        when ''        then self.show = 'gallery'
        when 'gallery' then self.show = 'gallery'
        when 'project' 
          self.show = 'project'
          project = _.first (_.filter self.projects, (i) -> i.title == id)
          self.project.title = project.title
          self.project.description = project.description
          self.project.thumb = project.thumb
          self.project.portraits = project.portraits
        when 'about' then self.show = 'about'
      riot.update()

    f = (to, id) -> self.to to, id
    riot.route f 
    riot.route.exec f
  </script>
</main>
