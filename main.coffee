express = require("express")
app = new express()
admin = require("zeus-admin")

app.use("/static", express.static("node_modules/zeus-admin/views/assets"))
app.use("/admin", admin)


app.get "/", (req, res)->
    res.end("Hello")

app.listen 3000, ->
    console.log "Listened"