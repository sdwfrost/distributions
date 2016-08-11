distributions
=============

This repository comprises of

-  Low level Nim bindings to
   `libRmath <http://github.com/sdwfrost/libRmath-nim>`__, a local fork
   of libRmath patched by the Julia developers to use a faster random
   number generator.
-  Higher level wrappers modelled from Julia's
   `Distributions.jl <https://github.com/JuliaStats/Distributions.jl>`__
   package.

This is currently a work in progress.

You will need to ensure that the shared library (libRmath-nim.dylib,
libRmath-nim.so, or Rmath-nim.dll) can be found (e.g. by setting
``LD_LIBRARY_PATH``).

Installation
------------

``distributions`` installs a shared library into ``$HOME/.nimble/lib``;
this needs to be created first, then added to the library search path.
The package can then be installed using
`nimble <https://github.com/nim-lang/nimble>`__ from a local directory.

.. code:: sh

    git clone http://github.com/sdwfrost/distributions.git
    cd distributions
    nimble install

Usage
-----

Low level usage using the ``rmath`` module.

.. code:: nim

    import random
    import rmath

    # Random numbers
    randomize()
    set_seed(random(2500),random(2500))
    var x=unif_rand()
    echo x

    var y=pchisq(3.84,1,true,false)
    echo y

High level usage using the ``distributions`` module.

.. code:: nim

    import distributions
    var dn=Normal(mu:0.0,sig:1.0)
    var dx=rand(dn)
    echo dx

Testing
-------

.. code:: sh

    nimble tests

