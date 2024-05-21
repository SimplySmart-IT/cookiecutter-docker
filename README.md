<div align="center" id="top"> 

  &#xa0;
  
</div>

<h1 align="center">🚀  Cookiecutter Docker</h1><h2 align="center">SimplySmart-IT - Open Source</h2>

<p align="center">
  <a href="#bookmark_tabs-about">About</a> &#xa0; | &#xa0; 
  <a href="#white_check_mark-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#rocket-lets-start">Let's start</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="#sparkles-your-support">Author</a>
</p>

&#xa0;

## :bookmark_tabs: About ##

**[Cookiecutter](https://www.cookiecutter.io/)** in a docker container based on alpine 3.19.

This repository and the associated Docker image are designed to help developers get started quickly and work with cookiecutters.

## Joomla! Templates for Cookiecutter[^1]
🚀 Cookiecutter Templates for Joomla! [cookiecutter-joomla](https://github.com/SimplySmart-IT/cookiecutter-joomla)  🚧  Under construction... 🚧 
## Discover Templates for Cookiecutter
Discover a variety of ready-to-use templates on [GitHub](https://github.com/search?q=cookiecutter&type=Repositories).
## PHP Templates for Cookiecutter
Filterd list for PHP templates on [GitHub](https://github.com/search?q=cookiecutter+language%3APHP+&type=repositories&s=updated&o=desc)

Thank you, [Audrey Roy Greenfeld](https://github.com/audreyfeldroy), for the great idea, implementation and maintenance of this very useful command-line utility and to make it available to the open source community.

&#xa0;

## :white_check_mark: Technologies ##

- [Cookiecutter](https://github.com/cookiecutter/cookiecutter) - an open source library for building coding project templates.
- [Docker](https://www.docker.com/)

&#xa0;

## :rocket: Let's start ##

Pull the docker image

```
docker pull ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
```
## Usage

Use a Cookiecutter project template directly from a repository to start your new project.

```
docker run -it --rm \
	-e TEMPLATE=gh:simplysmart-it/cookiecutter-joomla \
	-e OUT_DIR=/cookie_out \
	-v $PWD:/cookie_out \
	ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
```

This command runs Cookiecutter in your container and generates a new project in your current working directory based on the Github repository which you specified in the variable `TEMPLATE`.

Cookiecutter knows abbreviations for Github (gh), Bitbucket (bb), and GitLab (gl) projects, but you can also give it the full URL to any repository. [Read more about this topic directly in the Cookiecutter documentation.](https://cookiecutter.readthedocs.io/en/stable/usage.html).

&#xa0;

## Checkout branch

You can also check out a specific branch by adding and filling the variable `CHECKOUT` with the branch name.

```
docker run -it --rm \
	-e TEMPLATE=gh:simplysmart-it/cookiecutter-joomla \
	-e OUT_DIR=/cookie_out \
	-e CHECKOUT=main \
	-v $PWD:/cookie_out \
	ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
```
&#xa0;

## Directory structured cookiecutter

Some repositories are organized hierarchically and contain more than one template. You can generate your project from a subfolder of the repository by adding and filling the variable `DIRECTORY` with the folder name.

```
docker run -it --rm \
	-e TEMPLATE=git+ssh://git@github.com/simplysmart-it/cookiecutter-joomla \
	-e OUT_DIR=/cookie_out \
	-e DIRECTORY=plugin \
	-v $PWD:/cookie_out \
	ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
```
It is also possible to combine the variables `DIRECTORY`and `CHECKOUT` to get a subfolder from a specific branch.

&#xa0;

## Local repository or folder

You can also use a local folder or a previously cloned local repository. 
- MOUNT your local directory with the Cookiecutter template `-v YOUR-LOCAL-FOLDER-PATH:/cookie_in`
- FILL the `TEMPLATE` variable with the directory in your docker container that is mounted to the folder outside `TEMPLATE=/cookie_in`
```
docker run -it --rm \
	-e TEMPLATE=/cookie_in \
	-e OUT_DIR=/cookie_out \
	-v $PWD:/cookie_out \
	-v YOUR-LOCAL-FOLDER-PATH:/cookie_in \
	ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
```
&#xa0;

## :memo: License ##

This project is under GNU General Public License version 3 or later;. For more details, see the [LICENSE](LICENSE.md) file.

&#xa0;

## :sparkles: Your support ##

Made with :heart: by <a href="https://github.com/SimplySmart-IT" target="_blank">Martina Scholz</a>

Would you like to support me and my future developments?!? 🎉 🚀 Thank you !!! ❤️

[<img alt="paypal.me/simplysmartit" src="https://img.shields.io/static/v1?label=PayPal.me/SimplySmartIT&message=PayPal.me&color=1040c1&style=for-the-badge&logo=paypal"/>](https://paypal.me/simplysmartit?country.x=DE&locale.x=de_DE)

&#xa0;

<a href="#top">Back to top&nbsp;&nbsp;⬆️</a>

[^1]: This project is not affiliated with or endorsed by The Joomla! Project™. Any products and services provided through this site are not supported or warrantied by The Joomla! Project or Open Source Matters, Inc. Use of the Joomla!® name, symbol, logo and related trademarks is permitted under a limited license granted by Open Source Matters, Inc.
