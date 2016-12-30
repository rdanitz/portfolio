<gallery>
  <div class="pure-g">
    <div class="pure-u-1 gallery noselect" >
      <div class="small pure-u-1 pure-u-sm-1">
        <me />
        <myframe each={ projects } />
        <you />
      </div>

      <div class="medium">
        <div class="pure-u-md-1-2">
          <me />
          <myframe each={ projects.slice(0, n/2) } />
        </div>

        <div class="pure-u-md-1-2">
          <myframe each={ projects.slice(n/2, n) } />
          <you />
        </div>
      </div>

      <div class="large">
        <div class="pure-u-lg-1-3 pure-u-xl-1-3">
          <me />
          <myframe each={ projects.slice(0, n/3) } />
        </div>

        <div class="pure-u-lg-1-3 pure-u-xl-1-3">
          <myframe each={ projects.slice(n/3, (2*n)/3) } />
        </div>

        <div class="pure-u-lg-1-3 pure-u-xl-1-3">
          <myframe each={ projects.slice((2*n)/3, n) } />
          <you />
        </div>
      </div>
    </div>

    <div class="pure-u-1 social-media-wrapper">
      <social-media></social-media>
    </div>
  </div>

  <script type="coffeescript">
    @projects = opts.projects
    @n = projects.length
  </script>
</gallery>
