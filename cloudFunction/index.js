"use strict";

import { Firestore } from "@google-cloud/firestore";

/**
 * Responds to an HTTP request using data from the request body parsed according
 * to the "content-type" header.
 *
 * @param {Object} req Cloud Function request context.
 * @param {Object} res Cloud Function response context.
 */
export async function getResumeData(req, res) {
  let message = req.query.message || req.body.message || "Hello World";
  res.status(200).send(message);
  // const firestore = new Firestore();
  // const document = firestore.doc("resumes/1");

  // const doc = await document.get();

  // if (!doc) {
  //   res.status(404).send("Resume NOT Found")
  // }

  // res.status(200).send(JSON.stringify(doc));
}
