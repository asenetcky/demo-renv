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
