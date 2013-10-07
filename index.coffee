module.exports = ->
    (req, res, next) ->
        authorization = req.headers.authorization
        return res.send 204 if not authorization? and req.method is "OPTIONS"
        next()