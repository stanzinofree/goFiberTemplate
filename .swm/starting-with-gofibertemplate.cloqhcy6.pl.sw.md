---
id: cloqhcy6
title: Starting with goFiberTemplate
file_version: 1.1.3
app_version: 1.19.4
---

<!-- Intro - Do not remove this comment -->
This repository is intended to be a starting point for my microservices written in Go with the Fiber framework.

The initial section includes the package name and the module imports.

We use standard modules and add basic fiber packages, godotenv, and env to create a config struct from our environment file and use it in our code.

package main

import ( "fmt" "github.com/caarlos0/env/v10" "github.com/gofiber/fiber/v2" "github.com/joho/godotenv" )

type Config struct { AppNAme string `env:"APPNAME,required"` Version string `env:"VERSION,required"` ApiVersion string `env:"APIVERSION,required"` Listen string `env:"LISTEN,required"` }

<br/>

<!-- Steps - Do not remove this comment -->
1. [Install](install.42lekws0.sw.md)


<br/>

This file was generated by Swimm. [Click here to view it in the app](https://app.swimm.io/repos/Z2l0aHViJTNBJTNBZ29GaWJlclRlbXBsYXRlJTNBJTNBc3Rhbnppbm9mcmVl/playlists/cloqhcy6).
