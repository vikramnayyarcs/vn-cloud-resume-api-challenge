"use strict";

const { Firestore } = require("@google-cloud/firestore");

/**
 * Responds to an HTTP request using data from the request body parsed according
 * to the "content-type" header.
 *
 * @param {Object} req Cloud Function request context.
 * @param {Object} res Cloud Function response context.
 */
exports.getResumeData = async(req, res) => {
  const firestore = new Firestore();
  const document = firestore.doc("resumes/1");

  const doc = await document.get();

  if (!doc) {
    res.status(404).send("Resume NOT Found")
  }

  res.status(200).send(JSON.stringify(doc));
};
