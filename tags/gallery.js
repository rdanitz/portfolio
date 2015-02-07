riot.tag('gallery', '<div class="pure-g gallery" ><div class="me pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5"><span><a href="">{ me.name }</a></span></div><div class="frame pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5" style="-webkit-order: { parent.index(title) };" each="{ projects }" ><div class="frame-text" height="{ this.width() }" ><p><a href="#{ title }">{ abstract }</a></p></div><div class="frame-image pure-image"><img src="{ thumb }" width="100%"></img></div></div><div class="you pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4 pure-u-xl-1-5"><span><a href="">{ you.name }</a></span></div></div>', function(opts) {var self;

self = this;

this.me = opts.me;

this.you = opts.you;

this.projects = opts.projects;

this.index = function(title) {
  return 2 * _.indexOf(_.pluck(self.projects, 'title'), title);
};

});
