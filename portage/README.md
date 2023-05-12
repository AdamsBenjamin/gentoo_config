# Portage

This is for managing system settings for the Portage package manager.
In practice, these changes are only observed through the use of soft links, so
the files in `/etc/portage` will need to be replaced in the case
of recovery, portage will never read from the user's `.config`.
