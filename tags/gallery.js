riot.tag('gallery', '<div class="pure-g"><div class="pure-u-1-5 frame vertical-center-wrapper" each="{ frames() }"><div class="frame-text" if="{ description }"><p class="frame-text-inner"><a href="#{ name }">{ abstract }</a></p></div><div class="frame-image" if="{ thumb }"><img src="{ thumb ? thumb : \'images/zero.png\' }" width="100%"></img></div><span class="{ type }" if="{ !thumb }"><a href="">{ name }</a></span></div></div>', function(opts) {this.projects = opts.projects;

this.frames = function() {
  return [].concat(this.projects.slice(0, Math.ceil(_.size(this.projects) / 2)), opts.me, this.projects.slice(Math.ceil(_.size(this.projects) / 2)), opts.you);
};

});
