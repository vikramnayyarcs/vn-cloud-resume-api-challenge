"use strict";

const { Firestore } = require("@google-cloud/firestore");

/**
 * Responds to an HTTP request using data from the request body parsed according
 * to the "content-type" header.
 *
 * @param {Object} req Cloud Function request context.
 * @param {Object} res Cloud Function response context.
 */
exports.getResumeData = (req, res) => {
  let message = req.query.message || req.body.message || "Hello World";
  res.status(200).send(message);
};
