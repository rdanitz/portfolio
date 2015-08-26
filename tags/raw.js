riot.tag('raw', '<span></span>', function(opts) {this.updateContent = function() {
  return this.root.innerHTML = opts.content;
};

this.on('update', function() {
  return this.updateContent();
});

this.updateContent();

});
