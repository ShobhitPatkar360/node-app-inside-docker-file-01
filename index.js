var express = require('express');
var app = express();

const PORT = process.env.PORT
const TEXT = process.env.TEXT;

app.get('/', function (req, res) {
  res.send(`some response on port ${PORT} with text - ${TEXT}`);
});

app.listen(PORT, function () {
  console.log(`You are listening on port ${PORT}, given text - ${TEXT}` );
});
