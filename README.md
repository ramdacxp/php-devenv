# PHP DevEnv

Scripts to install (and remove!) PHP, Composer, MariaDB (MySQL), and PhpMyAdmin on Windows.

## Motivation

For PHP development on Windows existing WAMP stacks were to much for me. I was looking for a fast solution to install and run needed servers locally without polluting my system with hidden files and PATH settings. An Apache webserver was not needed in almost all cases. The `npm` (and thus `NodeJS`) are required anyways, if you build fancy UI stuff on top of some base PHP API with frameworks like [Astro](https://astro.build/) or [Tailwind CSS](https://tailwindcss.com/docs/).

The scripts initially were part of my [PHP-Starter](https://github.com/ramdacxp/php-starter) repo. But with this approach you get multiple copies of the server binaries - one for each project.

The idea behind this repo is to **share a single set of DevEnv binaries across multiple repos.**

## Usage

You need to have
  [Git](https://git-scm.com/downloads) and
  [NodeJS (npm)](https://nodejs.org/en/download/prebuilt-installer).
[Visual Studio Code](https://code.visualstudio.com/download) makes much sense as well :).

* Type `npm i` to install all servers.
* Use `npm start` to start it (press `[Ctrl]-C` to stop)
* Type `npm run uninstaller` to remove the servers.

Lists of all available commands:

| Command                         | Description                                                                         |
|---------------------------------|-------------------------------------------------------------------------------------|
| `npm i`, `npm install`          | Install all tools                                                                   |
| `devenv.cmd`                    | Adapt `%PATH%` in current shell to find all tools                                   |
| `npm start`                     | Start database and development web servers                                          |
| `npm run installer <tool> ...`  | Individual tool installation for `php`, `db`, `composer` and/or `admin`             |
| `npm run installer fast <tool>` | Individual tool installation without download (if cached)                           |
| `npm run uninstaller`           | Cleanup installed tools and database data                                           |
| `npm run uninstaller all`       | Full cleanup including `node_modules` folder                                        |
| `npm run compose <command>`     | Run the given Composer `command`                                                    |
| `npm run db`                    | Start the Maria DB                                                                  |
| `npm run admin`                 | Start the webserver for the [database dashboard phpMyAdmin](http://127.0.0.1:8181/) |

Example output of `npm run installer php fast`:

```cmd
C:\Users\micha\Source\Repos\php-devenv> npm run installer php fast

> php-devenv@0.0.1 installer
> node .\scripts\installer.js php fast

  ____  _  _  ___  ____    __    __    __    ____  ____
 (_  _)( \( )/ __)(_  _)  /__\  (  )  (  )  ( ___)(  _ \
  _)(_  )  ( \__ \  )(   /(  )\  )(__  )(__  )__)  )   /
 (____)(_)\_)(___/ (__) (__)(__)(____)(____)(____)(_)\_)

Execute with npm run installer with any combination of
the following arguments: fast php db admin composer.
Installs all tools by default.

Installer is running in fast mode.

Installing PHP 8.3.11 ...
Fast mode uses cache: C:\Users\micha\Source\Repos\php-devenv\bin\php.zip
Cleanup directory C:\Users\micha\Source\Repos\php-devenv\bin\php ...
Unzipping C:\Users\micha\Source\Repos\php-devenv\bin\php.zip ...
Unzipped to: C:\Users\micha\Source\Repos\php-devenv\bin\php
Config file C:\Users\micha\Source\Repos\php-devenv\bin\php\php.ini created.
Start script C:\Users\micha\Source\Repos\php-devenv\bin\php.cmd created.
Installation of PHP was successful.
```

Example output of `devenv`:

```cmd
C:\Users\micha\Source\Repos\php-devenv> devenv
Setting up path environment variable for this shell ...
The following tools are now available in this shell:
- composer
- php


C:\Users\micha\Source\Repos\php-devenv> composer --version
Composer version 2.8.3 2024-11-17 13:13:04
PHP version 8.3.11 (C:\Users\micha\Source\Repos\php-devenv\bin\php\php.exe)
Run the "diagnose" command to get more detailed diagnostics output.
```

## Links

* [PHP8](https://windows.php.net/downloads/releases/archives/) with development webserver
* [Composer](https://getcomposer.org/download/) (PHP dependency manager)
* [MariaDB](https://mariadb.org/) (compatible to MySQL)
* [phpMyAdmin](https://www.phpmyadmin.net/) (database management web UI)

## License

MIT
