# Fish Shell

If user is present in `/etc/passwd` then we can simply enable Fish shell by running the following command:

```bash
$ chsh -s /usr/bin/fish # replace with the actual location of `fish`
```

Note, that `fish` need to be present in `/etc/shells`. If it is not there, then simply add it:

```bash
$ echo /usr/local/bin/fish | sudo tee -a /etc/shells
```

If user is not present in `/etc/passwd` then we can modify `.bash_profile` to start `fish` locally on login. Check the `.bash_profile` file for the suggested solution.
