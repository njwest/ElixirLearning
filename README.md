# Learn Elixir & Phoenix

Elixir is an incredibly powerful and fast functional language that runs on the Erlang VM. Elixir can be used to build software, embedded software, web servers, APIs, etc etc.

Phoenix is a super-fast and efficient Elixir web framework. Phoenix is to Elixir what Rails is to Ruby (although Phoenix/Elixir are orders of magnitude faster than Ruby on Rails).

## Getting Started

0. [Install Homebrew (macOS only)](https://brew.sh/)
1. [Install Elixir](https://elixir-lang.org/install.html)
2. [Install Phoenix](https://phoenixframework.org/)
3. [Install NodeJS (macOS homebrew instructions)](https://www.dyclassroom.com/howto-mac/how-to-install-nodejs-and-npm-on-mac-using-homebrew)
4. [Install PostgreSQL](https://www.postgresql.org/download/)
5. Install PostgreSQL GUI -- [Postico for macOS is really good](https://eggerapps.at/postico/)

I recommend using **Homebrew** to install Elixir/Erlang/Node if you are on macOS

If you use Homebrew to install **PostgreSQL**, just be careful you don't `brew upgrade all` or whatever and upgrade it without planning; PSQL version changes (like 19 to 20) sometimes cause compatibility issues with your data/config if not done properly

## Learning resources

Best to start with reviewing Getting Started in the official Elixir docs. Try to get as far as you can and ask me if you have any questions.

Some of the concepts are likely very new/different (Elixir is a functional lang, not OOP), so you may not remember them after first reading, but it is good to get some exposure to them.

* [Getting Started - Elixir Official](https://elixir-lang.org/getting-started/introduction.html)
* [Elixir docs (for reference)](https://hexdocs.pm/elixir/Kernel.html)
* [Elixir School](https://elixirschool.com/en/)
* [Elixir Koans](http://elixirkoans.io/)
* [Phoenix docs](https://hexdocs.pm/phoenix/overview.html)
* [Phoenix official guide](https://hexdocs.pm/phoenix/up_and_running.html#content)

## Key Concepts

* Pattern Matching
* Maps
* Tuples
* `case` & `cond` statements
* `IO.inspect(log_this)` === `console.log(logThis)`
* Real-time data exchange (pub/sub, Phoenix channels, etc)
* Recursive functions

## Key packages & libs

* Phoenix Channels (JS client connector for realtime Elixir data)
* Ecto database adapter (included in Phoenix framework)
* Logger for logging
* Guardian for JWT auth
* Comeonin + BCrypt elixir for encryption
* Absinthe for GraphQL
* cors_plug for CORS
* Decimal for high-precision decimal math, Numbers for efficient cross-type math

## Elixir Community

* [Elixir Forum](https://elixirforum.com/)
* [Daily Drip](https://www.dailydrip.com/)
