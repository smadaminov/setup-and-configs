# setup-and-configs
This is some setup information and various configs to make my life easier using different servers.

Fish Shell
-------

I'm trying to move away from Bourne shell. After spending some time, I decided to try [Fish](https://fishshell.com/) shell.

```bash
 $ set myname "Sergey"
 $ function say_hi
      echo Hi, $myname
   end
 $ say_hi
 Hi, Sergey
```

Roadmap
-------

Some things I definitely need to eventually add here

<ol>
<li>Add `dotfiles` alias to track changes to the dotfiles (maybe useful https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b).</li>
<li>add EDITOR and TERM=xterm-256color to the fish shell config file</li>
<li>nvim config.</li>
<li>List of libraries I want to on have machines I use.</li>
<li>List of software I want to on have machines I use, e.g., Ruby.</li>
<li>List of tools I want to have on machines I use.</li>
<li>Try <b>Terminalizer</b> (https://github.com/faressoft/terminalizer/) to record fish output.</li>
</ol>

LICENSE and Credits
-------
I have used work of other people while creating my setup so that may involve some licensing. Under the `LICENSES` folder you can find LICENSE files. Please let me know if I'm missing something so I can fix. For myself I use BSD-2 Clause License.

[tmux](https://github.com/gpakosz/.tmux)

Authors
-------
- Sergey Madaminov <smadaminov@cs.stonybrook.edu>
