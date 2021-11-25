This inadvertently deletes all your files and resets your `PATH`:

```
conda build reactivatettest
conda create -n reactivatetest python
conda activate reactivatetest
conda install -c local reactivatetest
```

The activate script of reactivatettest does two things:

- Create a directory to put temporary files in, and stores the path
  in `$REACTIVATETESTPATH`.
- Backs up the `$PATH` in `$PATH_BACKUP`, prefixes its own path to
  `$PATH`.

The deactivate script of reactivatettest undoes those things:

- It deletes all files in `$REACTIVATETESTPATH`.
- It sets `$PATH` back to `$PATH_BACKUP`.

This should work fine in normal operations.
Unfortunately `conda install reactivatetest` will
- install reactivatetest without calling the activate scripts directly,
- call `__conda_reactivate`, which will
- call `__conda_deactivate` and only then
- call `__conda_activate`.

Therefore, the deactivate script will be called first, deleting
everything and unsetting the PATH.
