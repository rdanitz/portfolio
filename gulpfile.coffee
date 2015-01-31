'use strict'

gulp = require 'gulp'
riot = require 'gulp-riot'
util = require 'gulp-util'
watch = require 'gulp-watch'
batch = require 'gulp-batch'
coffee = require 'gulp-coffee'
del = require 'del'
_ = require 'underscore'

paths =
  src: 'src/'
  dest: 'dist/'

gulp.task 'clean', () ->
  del paths.dest + '**/*'

gulp.task 'copy-src', () ->
  gulp.src [paths.src + 'index.html',
            paths.src + 'images/**/*',
            paths.src + 'styles/**'],
      base: paths.src
    .pipe (gulp.dest paths.dest)

gulp.task 'copy-bower', () ->
  gulp.src './bower_components/**/*',
      base: './'
    .pipe (gulp.dest paths.dest)

gulp.task 'riot', () ->
  gulp.src paths.src + '**/*.tag'
    .pipe riot
      compact: true
      expr: true
      type: 'coffeescript'
    .pipe (gulp.dest paths.dest)

gulp.task 'coffee', () ->
  gulp.src paths.src + '**/*.coffee'
    .pipe (coffee().on 'error', util.log)
    .pipe (gulp.dest paths.dest)

gulp.task 'dist', ['copy-src', 'copy-bower', 'riot', 'coffee']

gulp.task 'watch', ['dist'], () ->
  watch paths.src + '**/*', () -> gulp.start 'dist'

gulp.task 'default', ['watch']
