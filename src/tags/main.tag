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

  self = @

  @show = 'gallery'
  
  @me =
    type: 'me'
    name: 'My Name'
    portrait: ''

  @you =
    type: 'you'
    name: '@rdanitz'

  @project =
    name: ''
    abstract: ''
    description: ''
    thumb: ''
    portrait: ''

  @projects = projects

  @to_gallery = () ->
    self.show = 'gallery'
    riot.update()

  @to_project = (to) ->
    self.show = 'project'
    project = _.first (_.filter self.projects, (i) -> i.name == to)
    self.project.name = project.name
    self.project.description = project.description
    self.project.thumb = project.thumb
    self.project.portrait = project.portrait
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

</main>
