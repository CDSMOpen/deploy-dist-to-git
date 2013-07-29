"use strict"

module.exports = (grunt)->
	require("matchdep").filterDev("grunt-*").forEach(grunt.loadNpmTasks)

	grunt.initConfig {
		deploy:
			welshapp:
				options:
					repo: 'git@github.com:CDSMOpen/ILW-Welsh-App-Phonegap.git'
					branch: 'deploy'
					base: 'welshapp'
				src: ["**"]

			mathsapp:
				options:
					repo: 'git@github.com:CDSMOpen/ILW-Maths-App-Phonegap.git'
					branch: 'deploy'
					base: 'welshapp'
				src: ["**"]
	}

	grunt.renameTask "gh-pages", "deploy"

	grunt.registerTask "default", ["deploy"]
