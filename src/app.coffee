pinejs = require '@resin/pinejs'
express = require 'express'
app = express()

bodyParser = require 'body-parser'
app.use(bodyParser())


app.use (req, res, next) ->
	console.log('%s %s', req.method, req.url)
	next()

pinejs.init(app)
.then ->
	app.listen process.env.PORT or 1337, ->
		console.info('Server started')
