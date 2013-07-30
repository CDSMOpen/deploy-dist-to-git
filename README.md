# Deploy Dist to Git

## Reusable grunt script to deploy code distributions to a specific branch of a git repo.

### Usage
`grunt --repo=some/repo.git --path=path/to/dist/folder --branch=deploy --message="committed build #1"`

### Options

--repo*[^fn]
: Address of the git repo you want to deploy too

--path*
: Path to the folder you wish to deploy. All contents of the folder will be included

--branch
: The branch of the repo to deploy to. 
: default: *deploy*

--message
: Commit message to push to the repo

[^fn]: Required options marked with a \*
