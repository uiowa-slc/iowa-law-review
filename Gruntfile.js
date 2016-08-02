module.exports = function(grunt) {

  var globalConfig = {
    themeDir: 'themes/iowa-law-review'
  };

  // Project configuration.
  grunt.initConfig({

    globalConfig: globalConfig,
    pkg: grunt.file.readJSON('package.json'),
    
    //compile the sass

    sass: {
      dist: { 
        files: {
          '<%=globalConfig.themeDir %>/css/master.css' : '<%=globalConfig.themeDir %>/scss/master.scss',
          '<%=globalConfig.themeDir %>/css/editor.css' : '<%=globalConfig.themeDir %>/scss/editor.scss'
        },                  // Target
        options: {              // Target options
          outputStyle: 'compressed',
          includePaths: ['<%=globalConfig.themeDir %>/bower_components/bootstrap/scss/', 'division-bar/scss', '<%=globalConfig.themeDir %>/bower_components/bourbon/app/assets/stylesheets']
        }
      }
    },

    //concat all the files into the build folder

    concat: {
      js:{
        src: [
          'division-bar/js/division-bar.js',
          '<%=globalConfig.themeDir %>/bower_components/bootstrap-sass/assets/javascripts/bootstrap.js',
          '<%=globalConfig.themeDir %>/bower_components/bigfoot/dist/bigfoot.js',
          '<%=globalConfig.themeDir %>/bower_components/jquery-sticky/jquery.sticky.js',
          '<%=globalConfig.themeDir %>/js/app.js'

        ],
        dest: '<%=globalConfig.themeDir %>/build/build.src.js'
      }
    },

    //minify those concated files
    //toggle mangle to leave variable names intact

    uglify: {
      options: {
        mangle: true
      },
      my_target:{
        files:{
        '<%=globalConfig.themeDir %>/build/build.js': ['<%=globalConfig.themeDir %>/build/build.src.js'],
        }
      }
    },
    watch: {
      scripts: {
        files: ['<%=globalConfig.themeDir %>/js/*.js', '<%=globalConfig.themeDir %>/js/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: true,
        }
      },
      css: {
        files: ['<%=globalConfig.themeDir %>/scss/*.scss', '<%=globalConfig.themeDir %>/scss/**/*.scss', 'division-project/scss/*.scss','division-project/scss/**/*.scss'],
        tasks: ['sass'],
        options: {
          spawn: true,
        }
      }
    },

    criticalcss: {
            custom: {
                options: {
                    url: "http://localhost:8888/iowa-law-review",
                    width: 1200,
                    height: 900,
                    outputfile: "<%=globalConfig.themeDir %>/templates/Includes/CriticalCss.ss",
                    filename: "<%=globalConfig.themeDir %>/css/master.css", // Using path.resolve( path.join( ... ) ) is a good idea here
                    buffer: 800*1024,
                    ignoreConsole: false,
                    forceInclude: ['.navbar', '.condensed-navbar', '#article-carousel', '.carousel', '.division-topbar']
                }
            }
        },
    cssmin: {
        options: {
          shorthandCompacting: false,
          roundingPrecision: -1
        },
        target: {
          files: {
            '<%=globalConfig.themeDir %>/templates/Includes/CriticalCss.ss': ['<%=globalConfig.themeDir %>/templates/Includes/CriticalCss.ss']
          }
        }
      }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-criticalcss');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  // Default task(s).
  // Note: order of tasks is very important
  grunt.registerTask('default', ['sass', 'concat', 'uglify','criticalcss', 'cssmin', 'watch']);

};