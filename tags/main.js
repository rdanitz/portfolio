riot.tag('main', '<div if="{ show == \'gallery\' }" ><gallery projects="{ projects }" me="{ me }" you="{ you }" ></gallery></div><div if="{ show == \'project\' }" ><project bind="{ project }" ></project></div><div if="{ show == \'about\' }" ><about bind="{ me }" ></about></div>', function(opts) {var f, self;

self = this;

this.show = 'gallery';

this.me = me;

this.you = you;

this.projects = projects;

this.project = {
  title: '',
  abstract: '',
  description: '',
  thumb: '',
  portraits: ''
};

this.to = function(to, id) {
  var project;
  switch (to) {
    case '':
      self.show = 'gallery';
      break;
    case 'gallery':
      self.show = 'gallery';
      break;
    case 'project':
      self.show = 'project';
      project = _.first(_.filter(self.projects, function(i) {
        return i.title === id;
      }));
      self.project.title = project.title;
      self.project.description = project.description;
      self.project.thumb = project.thumb;
      self.project.portraits = project.portraits;
      break;
    case 'about':
      self.show = 'about';
  }
  return riot.update();
};

f = function(to, id) {
  return self.to(to, id);
};

riot.route(f);

riot.route.exec(f);

});
