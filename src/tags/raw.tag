<raw>
  <span></span>

  <script type="coffeescript">
    @updateContent = () -> @root.innerHTML = opts.content
    @on 'update', () -> @updateContent()
    @updateContent()
  </script>
</raw>
