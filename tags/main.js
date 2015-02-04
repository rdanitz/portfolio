riot.tag('main', '<div if="{ show == \'gallery\' }"><gallery projects="{ projects }" me="{ me }" you="{ you }"></gallery></div><div if="{ show == \'project\' }"><project bind="{ project }"></project></div>', function(opts) {var self;

self = this;

this.show = 'gallery';

this.me = {
  _class: 'me',
  name: 'My Name',
  portrait: ''
};

this.you = {
  _class: 'you',
  name: '@rdanitz'
};

this.project = {
  name: '',
  abstract: '',
  description: '',
  thumb: '',
  portrait: ''
};

this.projects = _.map(_.range(1, 14), function(i) {
  return {
    name: 'Project ' + i,
    abstract: "High Life hella mlkshk, Banksy four dollar toast American Apparel occupy seitan. Ethical hashtag keytar normcore Schlitz drinking vinegar. Mlkshk synth gastropub flannel.",
    description: "Cred try-hard irony plaid fap ethical, +1 skateboard. Lo-fi skateboard flannel artisan. Food truck quinoa keffiyeh raw denim flannel hella Brooklyn, Intelligentsia slow-carb. Tote bag bitters taxidermy, Blue Bottle wolf put a bird on it High Life typewriter cred butcher seitan stumptown sustainable fashion axe. Bitters biodiesel direct trade, cray authentic bicycle rights fingerstache chillwave tofu banh mi pickled Austin. Polaroid blog disrupt, beard McSweeney's XOXO street art cliche cornhole drinking vinegar. Artisan church-key umami, swag biodiesel banjo authentic forage Williamsburg Kickstarter small batch.",
    thumb: 'images/thumb.png',
    portrait: 'images/portrait.png'
  };
});

riot.route(function(to) {
  var project;
  if (to === '') {
    self.show = 'gallery';
    riot.update();
    return;
  }
  self.show = 'project';
  project = _.first(_.filter(self.projects, function(i) {
    return i.name === to;
  }));
  console.log(project);
  self.project.name = project.name;
  self.project.abstract = project.abstract;
  self.project.description = project.description;
  self.project.thumb = project.thumb;
  self.project.portrait = project.portrait;
  console.log(self.project);
  return riot.update();
});

});
