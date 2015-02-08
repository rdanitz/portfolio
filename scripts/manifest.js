'use strict';
var me, projects, you;

me = {
  name: 'My Name',
  abstract: "Chambray gluten-free chia flannel Vice, irony Austin. Four loko Marfa asymmetrical 8-bit ethical. Austin authentic disrupt, kitsch Portland kale chips bespoke Vice Tumblr Marfa leggings. Keytar YOLO Schlitz Portland, shabby chic flannel try-hard migas sustainable you probably haven't heard of them whatever sriracha photo booth tousled PBR.",
  cv: "Brooklyn fashion axe lomo, sartorial forage health goth flexitarian scenester taxidermy irony Pitchfork pop-up Carles mustache fanny pack. Gluten-free retro Helvetica literally. Biodiesel synth irony bespoke normcore. Craft beer bicycle rights mustache, bitters roof party four loko salvia chillwave typewriter plaid. Taxidermy photo booth migas, cliche sustainable hella kogi heirloom fixie swag Pinterest cray. Messenger bag flannel photo booth sartorial Tumblr, Thundercats roof party. Jean shorts health goth mixtape, bitters selfies banjo lo-fi synth XOXO.\n\nIPhone Williamsburg literally Wes Anderson selfies. Portland Brooklyn swag single-origin coffee letterpress Etsy. Keytar banjo salvia, wayfarers farm-to-table brunch retro skateboard selvage irony direct trade shabby chic. Truffaut selvage small batch flexitarian, vinyl sriracha Pinterest twee stumptown. Try-hard chia fashion axe bespoke narwhal, quinoa mixtape health goth lomo mlkshk. McSweeney's craft beer flannel YOLO, before they sold out meggings post-ironic bitters swag banh mi Kickstarter jean shorts direct trade cardigan. Bushwick scenester 90's flannel.\n\nFour loko Brooklyn shabby chic, lo-fi listicle keytar master cleanse paleo synth PBR chillwave. Blog church-key Vice gastropub, tofu retro gentrify kale chips mixtape kogi fixie shabby chic. Migas street art normcore tattooed ethical authentic, fanny pack locavore pop-up bitters. Kogi twee stumptown, PBR&B semiotics migas four dollar toast raw denim. Craft beer shabby chic locavore readymade cold-pressed Truffaut, biodiesel 3 wolf moon art party. Readymade mlkshk 90's Carles asymmetrical beard. Irony biodiesel artisan, lo-fi listicle letterpress PBR Neutra.\n\nFood truck Truffaut butcher literally. Leggings meggings meh salvia pop-up blog, cred migas paleo fixie wayfarers semiotics Wes Anderson. Lo-fi photo booth cold-pressed, crucifix fixie hoodie master cleanse scenester migas retro four dollar toast disrupt farm-to-table. Umami ennui Shoreditch migas Etsy, plaid bitters narwhal jean shorts direct trade. Taxidermy farm-to-table aesthetic ennui, hella four dollar toast wayfarers meh Schlitz plaid health goth. Craft beer Bushwick sartorial PBR&B, listicle typewriter sustainable mixtape fashion axe post-ironic fingerstache art party Helvetica XOXO heirloom. Flexitarian leggings mlkshk beard, banh mi single-origin coffee fap taxidermy wolf chillwave.",
  portrait: 'images/portrait2.png',
  email: 'my@email.com',
  twitter: '@my'
};

you = {
  name: 'rdanitz',
  twitter: '@rdanitz',
  github: 'https://github.com/rdanitz'
};

projects = _.map(_.range(1, 14), function(i) {
  return {
    title: 'Project ' + i,
    abstract: "High Life hella mlkshk, Banksy four dollar toast American Apparel occupy seitan. Ethical hashtag keytar normcore Schlitz drinking vinegar. Mlkshk synth gastropub flannel.",
    description: "Cred try-hard irony plaid fap ethical, +1 skateboard. Lo-fi skateboard flannel artisan. Food truck quinoa keffiyeh raw denim flannel hella Brooklyn, Intelligentsia slow-carb. Tote bag bitters taxidermy, Blue Bottle wolf put a bird on it High Life typewriter cred butcher seitan stumptown sustainable fashion axe. Bitters biodiesel direct trade, cray authentic bicycle rights fingerstache chillwave tofu banh mi pickled Austin. Polaroid blog disrupt, beard McSweeney's XOXO street art cliche cornhole drinking vinegar. Artisan church-key umami, swag biodiesel banjo authentic forage Williamsburg Kickstarter small batch.",
    thumb: 'images/thumb.png',
    portraits: ['images/portrait2.png', 'images/portrait1.png']
  };
});
