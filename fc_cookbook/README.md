# fc_cookbook

The [fc_cookbook](fc_cookbook) `default` recipe sets a node attribute that is picked up by the Audit cookbook and passed to the profile. It is _essential_ that the fc_cookbook run _before_ the Audit cookbook in the run list or the attributes are not propagated to the profile.
