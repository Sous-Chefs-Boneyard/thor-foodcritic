# thor-foodcritic

[![Gem Version](https://badge.fury.io/rb/thor-foodcritic.svg)](https://badge.fury.io/rb/thor-foodcritic)
[![Build Status](https://img.shields.io/circleci/project/github/sous-chefs/thor-foodcritic/master.svg)](https://circleci.com/gh/sous-chefs/thor-foodcritic)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

Foodcritic Thor tasks for your Chef cookbook projects

## Maintainers

This chef tool is maintained by the Sous Chefs. The Sous Chefs are a community of Chef maintainers working together to maintain important cookbooks and tools. If you’d like to know more please visit [sous-chefs.org](https://sous-chefs.org/) or come chat with us on the Chef Community Slack in [#sous-chefs](https://chefcommunity.slack.com/messages/C2V7B88SF).

## Installation

```ruby
gem install thor-foodcritic
```

## Usage

To add the FoodCritic tasks to any Thorfile just require this gem

```ruby
require 'thor/foodcritic'
```

And then get a list of your thor tasks

```shell
$ thor list

foodcritic
----------
thor foodcritic:lint  # Run a lint test against the Cookbook in your current working directory.
```

Run the lint task to get a review

```shell
$ thor foodcritic:lint

FC002: Avoid string interpolation where not required: ...
FC003: Check whether you are running with chef server before using server-specific features: ...
FC011: Missing README in markdown format: ...
```

If any epic failure tags are specified with the `-f` flag, Thor will exit with a status code of `100`.

## Author

Author:: Jamie Winsor ([jamie@vialstudios.com](mailto:jamie@vialstudios.com))

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
