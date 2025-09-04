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
- **Prefixes**:
  - `feature/` - new features
  - `bugfix/` - bug fixes
  - `hotfix/` - urgent fixes
  - `release/` - release preparation (e.g., `release/v1.2.0`)
  - `chore/` - non-code tasks (dependencies, docs)
- **Rules**: lowercase + hyphens only, include ticket numbers when applicable (e.g., `feature/issue-123-login`)
- **Always branch from main**, delete after merge

## Pull Requests
- **Title**: Use conventional commit format
- **Review within 24 hours**
- **CI must pass before merge**
- **GitHub merge strategy**:
  - Multi-commit PRs: "Squash and merge"
  - Single-commit PRs: "Rebase and merge"

## Versioning
- **Semantic versioning**: MAJOR.MINOR.PATCH
- **Tag format**: `v1.2.3` on main branch only
- **Main is always releasable**: No release branches needed
- **App stores**: Never skip versions, increment build number for resubmissions

