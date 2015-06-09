<raw>
  <span></span>

  <script type="coffee">
    @updateContent = () -> @root.innerHTML = opts.content
    @on 'update', () -> @updateContent()
    @updateContent()
  </script>
</raw>
