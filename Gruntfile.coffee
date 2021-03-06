module.exports = (grunt) ->
  grunt.initConfig
    cson:
      install:
        expand: true
        src: './*.cson'
        dest: './'
        ext: '.json'

    coffee:
      compile:
        expand: true
        flatten: true
        src: './src/*.coffee'
        dest: './dist'
        ext: '.js'

    clean:
      cleanup: ['./dist']


  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-cson'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['clean', 'coffee']
