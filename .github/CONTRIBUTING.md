# Contributing

## Issues & Bug Reports

Simply go to the [issues tab](https://github.com/frostproject/libjpeg-rbx/issues) and pick an according issue template. If there's nothing that matches your issue, use the custom template. Please, make sure you detail and reason all of your suggestions. Attach any media like image and video proof to help us understand what is wrong. For any security issues, please report them privately or open a vulnerability issue on GitHub. We will check it out ASAP. Make sure you follow the security guide.

## Request for changes & Pull Requests

You first need to create a fork of the [repository](https://github.com/frostproject/libjpeg-rbx) to commit your changes to it. Methods to fork a repository can be found in the [GitHub Documentation](https://docs.github.com/en/get-started/quickstart/fork-a-repo).

Then add your fork as a local project:

```sh
git clone https://github.com/frostproject/libjpeg-rbx
```

> [Which remote URL should be used ?](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories)

Then, go to your local folder

```sh
cd libjpeg-rbx
```

Add git remote controls :

```sh
git remote add fork https://github.com/YOUR-USERNAME/libjpeg-rbx
git remote add upstream https://github.com/YOUR-USERNAME/libjpeg-rbx
```

You can now verify that you have your two git remotes:

```sh
git remote -v
```

## Receive remote updates

In view of staying up to date with the central repository:

```sh
git pull upstream main
```

## Choose a base branch

Before starting development, you need to know which branch to base your modifications/additions on. When in doubt, use main.
When creating a new branch, name it with useful information. For example, if your pull request fixes a bug, name it bugfix-20.
This way it is clear that this branch fixes issue #20 which is a bug.

```sh
# Switch to the desired branch
git switch main

# Pull down any upstream changes
git pull

# Create a new branch to work on
git switch --create 1234-name-issue
```

Commit your changes, then push the branch to your fork with `git push -u fork` and open a pull request on the [repository](https://github.com/frostproject/libjpeg-rbx) following the template provided.

While not always enforced, it is recommended to follow the code style guide provided. As this is only an issue tracker, we can only suggest you what to use if you plan to contribute to the project itself. The codebase follows the official Roblox Luau style guide and the Lua Rocks style guide. We use the default and recommended 4 tab spaces for indentation. All of that is up to your own preference and has no real meaning. You can read both of them here: <br>
https://roblox.github.io/lua-style-guide/ <br>
https://github.com/luarocks/lua-style-guide

You can also check out all other files in the repository. They are upstreamed from our template.
