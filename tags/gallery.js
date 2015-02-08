riot.tag('gallery', '<div class="pure-g gallery" ><div class="me-order frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5" style="display: -webkit-flex;"><div class="me"><span><a href="#about">{ me.name }</a></span></div></div><div class="frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5" style="-webkit-order: { 2 * parent.index(title) };" each="{ projects }" ><div class="frame-text"><p><a href="#project/{ title }">{ abstract }</a></p></div><div class="frame-image pure-image noselect"><img src="{ thumb }" width="100%"></img></div></div><div class="you-order frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5"><div class="you"><span><a href="{ you.github }" >&copy;{ you.name }</a></span></div></div></div>', function(opts) {var self;

self = this;

this.me = opts.me;

this.you = opts.you;

this.projects = opts.projects;

this.index = function(title) {
  return _.indexOf(_.pluck(self.projects, 'title'), title);
};

});
