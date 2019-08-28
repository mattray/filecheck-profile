# Example of Attribute-driven InSpec Profile and Driving it with Audit cookbook

This [profile](profile) checks that a file exists. The particular file defaults to /etc/hosts, but may be overridden via an attribute. There are 3 scenarios tested via the [kitchen.yml](kitchen.yml):

## audit

This is the `audit` suite in the kitchen.yml. The suite attributes are passed to the Audit cookbook and passed to the profile. The `test/audit-output.json` shows the results of the Audit cookbook InSpec run. `kitchen verify audit` is not valid for testing

## fc_cookbook

This is the `fc_cookbook` suite in the kitchen.yml. It converges the [fc_cookbook](fc_cookbook) which sets a node attribute that is picked up by the Audit cookbook and passed to the profile. It is _essential_ that the fc_cookbook run _before_ the Audit cookbook in the run list or the attributes are not propagated to the profile. The `test/fc-output.json` shows the results of the Audit cookbook InSpec run. `kitchen verify fc_cookbook` is not valid for testing.

## noop

This is the `noop` suite in the kitchen.yml. Only the verifier attribute is set and passed to the profile. `kitchen verify noop` tests the InSpec profile directly.
