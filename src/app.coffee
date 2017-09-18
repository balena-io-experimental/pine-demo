pinejs = require '@resin/pinejs'
express = require 'express'
app = express()

bodyParser = require 'body-parser'
app.use(bodyParser())


app.use (req, res, next) ->
	console.log('%s %s', req.method, req.url)
	next()

app.use (req, res, next) ->
	if req.query.restricted is '1'
		req.user = { permissions: [ 'resource.get' ] }
	else
		req.user = { permissions: [ 'resource.all' ] }
	next()

pinejs.init(app)
.then ->
	app.listen process.env.PORT or 1337, ->
		console.info('Server started')
