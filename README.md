# thor-foodcritic

[![Gem Version](https://badge.fury.io/rb/thor-foodcritic.svg)](https://badge.fury.io/rb/thor-foodcritic)

Food Critic Thor tasks for your Chef cookbook projects

# Installation

```
gem install thor-foodcritic
```

# Usage

To add the FoodCritic tasks to any Thorfile just require this gem

```
require 'thor/foodcritic'
```

And then get a list of your thor tasks

```
$ thor list

foodcritic
----------
thor foodcritic:lint  # Run a lint test against the Cookbook in your current working directory.
```

Run the lint task to get a review

```
$ thor foodcritic:lint

FC002: Avoid string interpolation where not required: ...
FC003: Check whether you are running with chef server before using server-specific features: ...
FC011: Missing README in markdown format: ...
```

If any epic failure tags are specified with the `-f` flag, Thor will exit with a status code of `100`.

# Author

Author:: Jamie Winsor ([jamie@vialstudios.com](mailto:jamie@vialstudios.com))
