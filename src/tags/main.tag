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
    _class: 'me'
    name: 'My Name'
    portrait: ''

  @you =
    _class: 'you'
    name: '@rdanitz'

  @project =
    name: ''
    description: ''
    thumb: ''
    portrait: ''

  @projects = _.map (_.range 1, 14), (i) ->
    name: 'Project ' + i
    description: """
     High Life hella mlkshk, Banksy four dollar toast American Apparel occupy seitan. Ethical hashtag keytar normcore Schlitz drinking vinegar. Mlkshk synth gastropub flannel."""
    thumb: 'images/thumb.png'
    portrait: 'images/portrait.png'

  riot.route (to) ->
    if to == ''
      self.show = 'gallery'
      riot.update()
      return

    self.show = 'project'
    project = _.first (_.filter self.projects, (i) -> i.name == to)
    console.log project
    self.project.name = project.name
    self.project.description = project.description
    self.project.thumb = project.thumb
    self.project.portrait = project.portrait
    console.log self.project
    riot.update()

</main>
