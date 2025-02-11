# Using renv

# So the easiest way to use renv is to create a new project
# and then click the "use renv" click box in the dialog.

# Workflow

# nice balance between organic and intentional

# install with renv
# use the packages
# snapshot
# share
# renv restore

install.packages("renv")
renv::init()

# showcasing the cache
# we can install once
renv::install("purrr")

# and if we try to install again, it just looks
# at the cache instead of possibly installing
# different version
rep("purrr", 10) |>
  purrr::walk(
    \(pkg){
      renv::install(pkg, prompt = FALSE)
    }
  )


# it's not going to update the package on you
# unless you specifically tell it to.

renv::install("purrr@1.0.0", prompt = FALSE)

renv::update("purrr")

# can update everything with renv::update()

# let's go through the basics

# we use a function that was installed
list_of_numbers <-
  purrr::map(1:10, \(number) number^2)

list_of_numbers

renv::snapshot()

# try cloning elsewhere and see what happens
renv::install("gert", prompt = FALSE)
renv::install("fs", prompt = FALSE)

tmpfolder <- fs::dir_create(tempdir(), "demo-renv")
gert::git_clone(
  url = "https://github.com/asenetcky/demo-renv.git",
  branch = "established-project",
  path = tmpfolder
)

renv::install("rstudioapi", prompt = FALSE)
proj_path <-
  rstudioapi::initializeProject(tmpfolder)


renv::snapshot()

rstudioapi::openProject(
  proj_path,
  newSession = TRUE
)

fs::dir_delete(tmpfolder)
