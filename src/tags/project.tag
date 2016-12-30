<project>
  <div class="pure-g project">
    <div class="pure-u-1">
      <social-media></social-media>
    </div>

    <div class="pure-u-1">
      <h1 class="project-header noselect">{ opts.bind.title }</h1>
    </div>

    <div class="pure-u-11-12 project-images" each={ i in _.zip(_.compact(opts.bind.description.split('$')), _.range(opts.bind.images)) } >
      <div class="project-text">
        <raw content={ i[0] || '' } ></raw>
      </div>
      <div class="noselect">
        <figure>
          <img src="images/{ parent.opts.bind.name }/{ i[1] }.jpg" ></img>
          <figcaption></figcaption>
        </figure>
      </div>
    </div>

    <div class="pure-u-1-12 nav2 noselect">
      <span><a href="#gallery">^</a></span>
    </div>
  </div>
</project>
