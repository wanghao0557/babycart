module.exports=function(grunt){
	"use strict";

	grunt.config.init({
		pkg: grunt.file.readJSON('package.json'),
		jshint: {
			js: {
				options: {
					jshintrc: 'catalog/view/javascript/.jshintrc'
				},
				files: {
					src: [
					  'catalog/view/javascript/**/*.js',
					  '!catalog/view/javascript/bootstrap/js/*.js',
					  '!catalog/view/javascript/jquery/**/*.js'
					]
				}
			},
			grunt: {
				options: {
					jshintrc: 'catalog/view/javascript/.jshintrc'
				},
				files: {
					src: ['Gruntfile.js']
				}
			}
		},
		watch: {
			files: ['catalog/view/javascript/self/*.js'],
			tasks: ['jshint']
		},
		sass: {
			dist: {
				options: {
					style: 'compressed',
					sourcemap: 'inline'
				},
				files: {
					'catalog/view/theme/default/stylesheet/<%= pkg.name %>.min.css' : 'catalog/view/scss/babycart.scss'
				}
			}
		}
	});
	grunt.loadNpmTasks('grunt-contrib-jshint');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-sass');
};