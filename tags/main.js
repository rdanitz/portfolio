riot.tag('main', '<div if="{ show == \'gallery\' }" ><gallery projects="{ projects }" me="{ me }" you="{ you }" ></gallery></div><div if="{ show == \'project\' }" ><project bind="{ current }" ></project></div><div if="{ show == \'about\' }" ><about bind="{ me }"></about></div>', function(opts) {var f, self;

self = this;

this.show = 'gallery';

this.me = me;

this.you = you;

this.projects = projects;

this.current = {};

this.project = function(title) {
  return _.first(_.filter(self.projects, function(i) {
    return i.title === title;
  }));
};

this.to = function(to, name) {
  switch (to) {
    case '':
      self.show = 'gallery';
      break;
    case 'gallery':
      self.show = 'gallery';
      break;
    case 'about':
      self.show = 'about';
      break;
    case 'project':
      self.show = 'project';
      self.current = self.project(name);
  }
  return riot.update();
};

f = function(to, name) {
  return self.to(to, name);
};

riot.route(f);

riot.route.exec(f);

});
