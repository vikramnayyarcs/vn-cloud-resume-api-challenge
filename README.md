# Cloud Resume API Challenge:
## Project Summary:
<a href="https://us-central1-vn-cloud-resume-api-challenge.cloudfunctions.net/cloud-resume-function">Deployed Cloud Function Link</a>

This repository contains the code files behind my attempted solution to the 'Cloud Resume API Challenge'.

A link to <b>this</b> repo should appear inside of <a href="https://github.com/rishabkumar7/cloud-resume-api/blob/main/docs/submissions.md">Cloud Resume API Challenge ALL Submissions REPO SUBMISSIONS.MD file</a> upon a successful review of my solution.

## Project Structure
```
- .github
  - workflows
    - terraform.yml
- .gitignore
- .terraform
  - bucket.tf
  - cloudFunction.tf
  - firestore.tf
  - main.tf
- cloudFunction
  - index.js
  - package-lock.json
  - package.json
- keys.json
- resumeData.json
- terraform.tfstate
```

### Project Structure Summary
`.github` - A directory for the GitHub actions (handles `terraform apply` as well as other terraform commands on `git push`).
`.terraform` - Contains the resources to be generated with terraform.
`cloudFunction` - Raw code files for the cloud function.
`keys.json` - GCP Service Account information <b>NOT Pushed!!</b>
`resumeData.json` - JSON file containing the data which is returned by the API.

## GCP Project Information:
### GCP Service Account
Having a GCP Service account is <b>crucial</b> to the success of this project. Firstly you need to create one, generate `keys.json` and then store it somewhere. I myself opted to store it here in the root of this repository <b>without</b> pushing it!!

You will need to provide it the necessary permissions which at the very least include:
    
    Cloud Function Admin.
    Firestore Admin.
    Cloud Build Run access.
    Storage Access.

Worst case scenario, use error messages to identify other permissions that may be needed. The principle of <b>Least Privilege</b> is always preferred.

### Useful Commands/Resources:
`gcloud auth activate-service-account --key-file="KEY_FILE_PATH"` - Locally authenticate into that service account.

<a href="https://jozimarback.medium.com/using-github-actions-with-terraform-on-gcp-d473a37ddbd6">This Article</a> was integral in setting up GitHub Actions.

## Future Work:
Rate Limiting?

Caching?

Tests for cloud functions?

Create a FrontEnd.

Ensure the <b>whole</b> project works with Terraform. Right now the resume entry in the database has to be manually inputted into FireStore. This could be done programatically (One of the existing solutions already does this). Additionally, would it be possible to create the entire GCP Project <b>and</b> Service Account through Terraform?