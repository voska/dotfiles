# IMPORTANT

MUST NEVER leave behind a comment when deleting code
MUST ALWAYS use pnpm for node package management

## Git Workflow

- **Trunk-based development**: main branch always deployable, feature branches < 3 days
- **Linear history required**: Use squash merge for multi-commit PRs, rebase merge for single commits
- **Never commit directly to main**: Always use PRs

## Commit Standards

- **Conventional Commits format required**: `<type>[scope][!]: <description>`
- **Types**: feat, fix, docs, style, refactor, perf, test, chore
- **Atomic commits only**: One logical change per commit, builds must pass
- **Breaking changes**: Use `!` suffix or BREAKING CHANGE footer
- **No WIP commits**: Use stash for incomplete work

## Branch Naming (Conventional Branch)

- **Format**: `<type>/<description>`
- **Prefixes**: `feature/`, `bugfix/`, `hotfix/`, `release/`, `chore/`
- **Rules**: lowercase + hyphens, include ticket numbers when applicable (e.g., `feature/issue-123-login`)
- **Always branch from main**, delete after merge

## Pull Requests

- **Title**: Use conventional commit format
- **Review within 24 hours**
- **CI must pass before merge**
- **GitHub merge strategy**: Multi-commit PRs = "Squash and merge", Single-commit PRs = "Rebase and merge"

## Versioning

- **Semantic versioning**: MAJOR.MINOR.PATCH
- **Tag format**: `v1.2.3` on main branch only
- **Main is always releasable**: No release branches needed
- **App stores**: Never skip versions, increment build number for resubmissions

## Tools

**gh** - GitHub CLI
**rg** - ripgrep
**sg** - semgrep
**fzf** - fuzzy finder
**imagemagick** - image processing

**ast-grep** - AST code search/rewrite
`ast-grep -p 'pattern' [-r 'replacement'] [--lang tsx] [--json] [--interactive] .`

**fd** - file finder
`fd "pattern" [path] [-e ext] [-H] [-I] [-x command]`

**delta** - git diff viewer
`delta [-n] [-s] [--hyperlinks] path1 path2`
`git diff | delta`

**tldr** - command examples
`tldr command [-L lang] [-p platform] [-u] [-l]`

**jq** - JSON processor
`jq '.' file.json`
`jq '.[] | select(.key=="val")' file.json`
`jq --arg name val '. + $ARGS.named' file.json`

**yq** - YAML processor
`yq eval '.key' file.yaml`
`yq eval '.key = "val"' -i file.yaml`
`yq eval-all 'select(filename=="f1.yaml") * select(filename=="f2.yaml")' f1.yaml f2.yaml`

**mise** - runtime version manager
`mise use [--global] uv@version`
`mise install pnpm@version`
`mise set var=value`

**httpie** - HTTP client
`http [GET] url`
`http -p hb url`
`http POST url key=val key:=num`
`http url Header:value`
`http --session name url`
