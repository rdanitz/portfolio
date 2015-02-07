'use strict';
var projects;

projects = _.map(_.range(1, 14), function(i) {
  return {
    title: 'Project ' + i,
    abstract: "High Life hella mlkshk, Banksy four dollar toast American Apparel occupy seitan. Ethical hashtag keytar normcore Schlitz drinking vinegar. Mlkshk synth gastropub flannel.",
    description: "Cred try-hard irony plaid fap ethical, +1 skateboard. Lo-fi skateboard flannel artisan. Food truck quinoa keffiyeh raw denim flannel hella Brooklyn, Intelligentsia slow-carb. Tote bag bitters taxidermy, Blue Bottle wolf put a bird on it High Life typewriter cred butcher seitan stumptown sustainable fashion axe. Bitters biodiesel direct trade, cray authentic bicycle rights fingerstache chillwave tofu banh mi pickled Austin. Polaroid blog disrupt, beard McSweeney's XOXO street art cliche cornhole drinking vinegar. Artisan church-key umami, swag biodiesel banjo authentic forage Williamsburg Kickstarter small batch.",
    thumb: 'images/thumb.png',
    portrait: 'images/portrait.png'
  };
});
