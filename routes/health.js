var express = require('express');
var router = express.Router();
/**
 * GET /health
 * Server health check.
 */
app.get('/health', async function (req, res) {
	res.send(`Health check - ${new Date().toISOString()}`);
});

module.exports = router;