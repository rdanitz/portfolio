'use strict'

del = require 'del'
gulp = require 'gulp'
riot = require 'gulp-riot'
util = require 'gulp-util'
watch = require 'gulp-watch'
coffee = require 'gulp-coffee'
connect = require 'gulp-connect'

paths =
  src: 'src/'
  dest: 'dist/'

gulp.task 'clean', () ->
  del paths.dest + '**/*'

gulp.task 'copy', () ->
  gulp.src [paths.src + 'index.html',
            paths.src + 'images/**/*',
            paths.src + 'styles/**',
            paths.src + 'fonts/**'
           ],
      base: paths.src
    .pipe (gulp.dest paths.dest)

gulp.task 'riot', () ->
  gulp.src paths.src + '**/*.tag'
    .pipe riot
      compact: true
      # expr: true
      type: 'coffeescript'
    .pipe (gulp.dest paths.dest)

gulp.task 'coffee', () ->
  gulp.src paths.src + '**/*.coffee'
    .pipe (coffee({ bare: true }).on 'error', util.log)
    .pipe (gulp.dest paths.dest)

gulp.task 'dist', ['copy', 'riot', 'coffee']

gulp.task 'watch', ['dist'], () ->
  watch paths.src + '**/*', () -> gulp.start 'dist'

gulp.task 'serve', () ->
  connect.server
    root: 'dist'
    livereload: true

gulp.task 'default', ['serve', 'watch']
