"use strict"

module.exports = (grunt)->
	require("matchdep").filterDev("grunt-*").forEach(grunt.loadNpmTasks)

	grunt.initConfig 
		"gh-pages":
			app:
				options:
					repo: grunt.option('repo')
					branch: grunt.option('branch') || 'deploy'
					base: grunt.option('path') || '.'
					message: grunt.option('message') || "auto update"
				src: ["**"]

	#TODO:	Check for presence of "repo" option
	#		Create deploy task that defers to gh-pages if requirements are met 		
	grunt.registerTask "deploy", "deploy folders specified in grunt options to github repos", ->
		grunt.fail.warn("Repo option required") unless grunt.option("repo")
		grunt.fail.warn("Path option required") unless grunt.option("path")
		grunt.task.run ["gh-pages"]

	grunt.registerTask "default", ["deploy"]
