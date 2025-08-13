# Using GitHub Actions to Version Your Dataset

This template repo is used to demonstrate how one could use Github Actions to create a versionned dataset.

Versions (or backups) are periodically done in automated thanks to *cron* jobs.

## Fetch routine

In this template, it is assumed that you're data is available somewhere locally or online and requires some kind fetch routine to be accessed. In our case, this routine will be encapsulated in a [Docker](https://docs.docker.com/get-started/docker-overview/) container which allow to reuse the same environement to run the routine, drastically decreasing the risk of facing errors due to missing dependencies. 


## Maintaining a clean history

Versioning a dataset for use in research papers, data visualization applications, search engines, or other projects requires a clear Git history.
A clear history makes it easy to reference specific dataset versions.

To keep the dataset history clean from fetch routine changes, we use two branches:
- main: Contains the dataset itself.
- fetch: Contains the fetch logic and Docker setup.

This separation ensures that automated updates to the dataset do not clutter the development history.


## Automating the Process with GitHub Actions

With GitHub Actions, we can automate the process of fetching data from the fetch branch and committing it to the main branch.
- Cron jobs can run the fetch routine at regular intervals.
- The workflow commits the updated dataset to `main`, keeping the fetch logic isolated in `fetch`.

This creates a fully automated, versioned dataset without manual intervention. 

## Updating write (push) permissions

...
