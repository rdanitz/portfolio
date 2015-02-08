<main>
  <div if={ show == 'gallery' }>
    <gallery projects={ projects }
             me={ me }
             you={ you }>
    </gallery>
  </div>

  <div if={ show == 'project' }>
    <project bind={ project }>
    </project>
  </div>

  <script type="coffeescript"> 
    self = @

    @show = 'gallery'
    
    @me =
      name: 'My Name'
      portrait: ''

    @you =
      name: '@rdanitz'

    @project =
      title: ''
      abstract: ''
      description: ''
      thumb: ''
      portraits: ''

    @projects = projects

    @to_gallery = () ->
      self.show = 'gallery'
      riot.update()

    @to_project = (to) ->
      self.show = 'project'
      project = _.first (_.filter self.projects, (i) -> i.title == to)
      self.project.title = project.title
      self.project.description = project.description
      self.project.thumb = project.thumb
      self.project.portraits = project.portraits
      riot.update()

    riot.route (to) ->
      if to == ''
        self.to_gallery()
      else
        self.to_project(to)

    riot.route.exec (to)->
      if to == ''
        self.to_gallery()
      else
        self.to_project(to)
  </script>
</main>
