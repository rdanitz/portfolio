riot.tag('main', '<div if="{ show == \'gallery\' }"><gallery projects="{ projects }" me="{ me }" you="{ you }"></gallery></div><div if="{ show == \'project\' }"><project bind="{ project }"></project></div>', function(opts) {var self;

self = this;

this.show = 'gallery';

this.me = {
  name: 'My Name',
  portrait: ''
};

this.you = {
  name: '@rdanitz'
};

this.project = {
  title: '',
  abstract: '',
  description: '',
  thumb: '',
  portrait: ''
};

this.projects = projects;

this.to_gallery = function() {
  self.show = 'gallery';
  return riot.update();
};

this.to_project = function(to) {
  var project;
  self.show = 'project';
  project = _.first(_.filter(self.projects, function(i) {
    return i.title === to;
  }));
  self.project.title = project.title;
  self.project.description = project.description;
  self.project.thumb = project.thumb;
  self.project.portrait = project.portrait;
  return riot.update();
};

riot.route(function(to) {
  if (to === '') {
    return self.to_gallery();
  } else {
    return self.to_project(to);
  }
});

riot.route.exec(function(to) {
  if (to === '') {
    return self.to_gallery();
  } else {
    return self.to_project(to);
  }
});

});
