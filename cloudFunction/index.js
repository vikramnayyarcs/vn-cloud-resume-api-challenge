"use strict";

const { Firestore } = require("@google-cloud/firestore");

const firestore = new Firestore({
  projectId: "vn-cloud-resume-api-challenge",
  databaseId: "cloud-resume-challenge-firestore-database",
});

/**
 * Responds to an HTTP request using data from the request body parsed according
 * to the "content-type" header.
 *
 * @param {Object} req Cloud Function request context.
 * @param {Object} res Cloud Function response context.
 */
exports.getResumeData = async(req, res) => {
  // let message = req.query.message || req.body.message || "Hello World";
  // res.status(200).send(message);

  try {
    const resumeDocRef = firestore
      .collection("resumes")
      .doc("1");
    const resumeDoc = await resumeDocRef.get();

    if (resumeDoc.exists) {
      const resumeData = resumeDoc.data();
      res.status(200).json(resumeData);
    } else {
      res.status(404).send("Resume data not found");
    }
  }
  catch(error) {
    res.status(500).send(error)
  }
};
