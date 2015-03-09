riot.tag('main', '<div if="{ show == \'gallery\' }" ><gallery projects="{ projects }" me="{ me }" you="{ you }" ></gallery></div><div if="{ show == \'project\' }" ><div each="{ projects }" if="{ parent.current == title }"><project bind="{ parent.project(title) }"></project></div></div><div if="{ show == \'about\' }" ><about bind="{ me }" ></about></div>', function(opts) {var f, self;

self = this;

this.show = 'gallery';

this.me = me;

this.you = you;

this.current = '';

this.projects = projects;

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
      self.current = name;
  }
  return riot.update();
};

f = function(to, name) {
  return self.to(to, name);
};

riot.route(f);

riot.route.exec(f);

});
