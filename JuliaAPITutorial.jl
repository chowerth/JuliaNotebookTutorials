### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ 65104ad0-6a95-11eb-079e-cbc139e28bdf
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ ac1ff1c2-6a98-11eb-24f7-0bc38362d87b
begin
	Pkg.add("HTTP")
	using HTTP
	Pkg.add("JSON")
	using JSON
end

# ╔═╡ 3792f73e-6a92-11eb-10ce-6b4f06ed6f41
md"""
# _Consuming APIs with Julia_

As developers we use APIs all the time. Also as developers, our time is limited and we prefer to just copy paste things and look up quick references. As such, I thought it would be useful to create a quick guide on how to consume APIs in Julia for my own sake. We will interact with all CRUDL methods from a github repo of fake JSON data.
"""

# ╔═╡ bed711be-601f-4b7f-9100-acf6c5d1203c
md"""
#### Creating a temporary environment
"""

# ╔═╡ 28acc19e-3b44-454d-869d-7f4c5fde4206
md"""
Creating a temporary environment allows us to install packages without affecting other environments. It's a boilerplate step for Julia notebooks to keep our notebooks clean
"""

# ╔═╡ e2269f40-6a97-11eb-2d96-fdcf6ab782f9
md"""
#### Importing the packages
"""

# ╔═╡ fd327aa0-6a94-11eb-1411-b9ccd4fa2dde
md"""
Let's start by importing the `HTTP` package. This will give us the functionality we need to invoke web APIs via verbs like `get`, `post`, `put`, and `delete` as is standard. I will present two methods. The first is for use within this notebook, and the second is how I would do it in the Julia REPL actually coding. The first method guarantees that anyone who opens this notebook can use the packages.
"""

# ╔═╡ 56f80480-6a98-11eb-24eb-fff8947fd362
md"""
First, we set up a clean package environment. This activates a new temporary playground environment for our software...
"""

# ╔═╡ fe554ec0-6a9f-11eb-2352-a31c684b7402
md"""
**_or..._**
"""

# ╔═╡ 9220d930-6aa0-11eb-324d-b13bb3b32a45
"""IMAGE GOES HERE"""

# ╔═╡ 2a468fa0-6a99-11eb-1ec3-0df12eec9ddc
md"""
Then we add the HTTP package to our software environment..._to add more functionality you can put a cell like this anywhere in your notebook with the package you want_.
"""

# ╔═╡ 5ee4b700-6a99-11eb-04b5-550e4126606f
md"""
_If you already had `HTTP` installed, then this will just use the globally installed version._
"""

# ╔═╡ 516ff38e-f201-488e-beaf-0818e996f92a
begin
	req1 = HTTP.get("https://www.affirmations.dev/")
	affirmation = JSON.parse(String(req1.body))
end

# ╔═╡ 9e90358f-a46b-49c8-8395-146ab0b6820d
begin
	req2 = HTTP.get("https://picsum.photos/seed/picsum/200/300")
	random_image = req2.body
end

# ╔═╡ Cell order:
# ╠═3792f73e-6a92-11eb-10ce-6b4f06ed6f41
# ╟─bed711be-601f-4b7f-9100-acf6c5d1203c
# ╠═28acc19e-3b44-454d-869d-7f4c5fde4206
# ╠═65104ad0-6a95-11eb-079e-cbc139e28bdf
# ╟─e2269f40-6a97-11eb-2d96-fdcf6ab782f9
# ╟─fd327aa0-6a94-11eb-1411-b9ccd4fa2dde
# ╟─56f80480-6a98-11eb-24eb-fff8947fd362
# ╟─fe554ec0-6a9f-11eb-2352-a31c684b7402
# ╟─9220d930-6aa0-11eb-324d-b13bb3b32a45
# ╟─2a468fa0-6a99-11eb-1ec3-0df12eec9ddc
# ╠═ac1ff1c2-6a98-11eb-24f7-0bc38362d87b
# ╟─5ee4b700-6a99-11eb-04b5-550e4126606f
# ╠═516ff38e-f201-488e-beaf-0818e996f92a
# ╠═9e90358f-a46b-49c8-8395-146ab0b6820d
