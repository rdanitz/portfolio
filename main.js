import * as riot from 'riot'
import Raw from './raw.riot'
import SocialMedia from './social-media.riot'
import App from './app.riot'

riot.register('raw', Raw)

const mountApp = riot.component(App)

const app = mountApp(
    document.getElementById('root'),
    { welcome: "<div class=\"me\">Anna Sundukova</div><h2>Experience & Service Designer bringing the methodologies of UX and human-centred design to the design of spaces.</h2><p>Also a product strategist, design thinking consultant, workshop facilitator, public speaker – let’s embrace the complexity!<br/>To request portfolio, ask a question or simply get in touch, contact me:<br/><a href=\"mailto:anna@annasundukova.com\">anna@annasundukova.com</a></p><p>[full website coming soon]</p>",
      me: {
          email: 'anna@annasundukova.com',
          pinterest: 'annasundukova',
          linkedin: 'annasundukova',
          instagram: 'annoushk_a'
      }
    }
)
