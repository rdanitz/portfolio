riot.tag('project', '<div class="pure-g"><div class="pure-u-3-4 project-image noselect"><figure><img riot-src="{ opts.bind.portraits[current].img }" alt="{ opts.bind.portraits[current].caption }" ></img><figcaption>{ opts.bind.portraits[current].caption }</figcaption></figure></div><div class="pure-u-1-4 project-descr"><h1 class="project-header">{ opts.bind.title }</h1><div class="project-text"><raw content="{ opts.bind.description }" ></raw></div></div><div class="pure-u-3-4 nav1 noselect"><span><a onclick="{ prev }" >&lt;</a></span>&nbsp;&nbsp; <span><a onclick="{ next }" >&gt;</a></span></div><div class="pure-u-1-4 nav2 noselect"><span><a href="#gallery">^</a></span></div></div>', function(opts) {var self;

self = this;

this.current = 0;

this.prev = function() {
  return self.current = (self.current - 1 + _.size(self.opts.bind.portraits)) % (_.size(self.opts.bind.portraits));
};

this.next = function() {
  return self.current = (self.current + 1) % (_.size(self.opts.bind.portraits));
};

Mousetrap.bind('up', function() {
  return riot.route('#');
});

Mousetrap.bind('left', function() {
  self.prev();
  return riot.update();
});

Mousetrap.bind('right', function() {
  self.next();
  return riot.update();
});

});
