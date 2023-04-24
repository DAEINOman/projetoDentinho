const express = require('express');
const cors = require('cors');
const routes = require('./routes/router');

const app = express();

app.use(cors());

routes(app);

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Aplicativo rodando na porta ${port}`);
});