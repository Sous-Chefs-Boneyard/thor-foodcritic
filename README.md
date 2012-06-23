# Thor FoodCritic

FoodCritic Thor tasks for your Cookbook projects

# Installation

    gem install thor-foodcritic

# Usage

To add the FoodCritic tasks to any Thorfile just require this gem

    require 'thor/foodcritic'

And then get a list of your thor tasks

    $ thor list

    foodcritic
    ----------
    thor foodcritic:lint  # Run a lint test against the Cookbook in your current working directory.

Run the lint task to get a review

    $ thor foodcritic:lint

    FC002: Avoid string interpolation where not required: ...
    FC003: Check whether you are running with chef server before using server-specific features: ...
    FC011: Missing README in markdown format: ...

If any epic failure tags are specified with the `-f` flag, Thor will exit with a status code of `100`.

# License and Author

Author:: Jamie Winsor (<jamie@vialstudios.com>)

Copyright 2012, Jamie Winsor

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
