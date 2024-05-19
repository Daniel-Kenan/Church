// server.js
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Set EJS as the templating engine
app.set('view engine', 'ejs');

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Define a route that renders the index.ejs template
app.get('/', (req, res) => {
    const data = { title: 'Welcome to My App', message: 'Hello, World!' };
    res.render('index', data);
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
