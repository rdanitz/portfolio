riot.tag('about', '<div class="pure-g"><div class="pure-u-2-5 about-portrait noselect"><img riot-src="{ me.portrait }" ></img></div><div class="pure-u-3-5 about-descr"><h1 class="about-header">CV</h1><div class="about-cv"><raw content="{ me.cv }"></raw></div></div><div class="pure-u-3-4 about-abstract noselect"> about me </div><div class="pure-u-1-4 nav2 noselect"><span><a href="#gallery">^</a></span></div></div>', function(opts) {var self;

self = this;

this.me = opts.bind;

});
