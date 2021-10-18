### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ 6bebfe90-2fbf-11ec-0cc9-837156669369
md"""
# _I/O with Julia_

A program is useless without I/O so it's a pretty good idea to learn how it works. In this notebook we'll explore reading and writing to files synchronously and asynchronously as well as using I/O streams.

We'll deal with plain text files, CSV, JSON, and YAML files.
"""

# ╔═╡ fd17066b-a5ac-4542-b892-d796a2075c20
md"""
#### Importing the packages
"""

# ╔═╡ 307b1394-8aa5-42e3-abc2-49741bb33f01
md"""
Reading an entire file line by line and putting it in a vector.
"""

# ╔═╡ 76dec794-10d8-4487-8859-8f174d520b4c
begin
	open("Data/IOData.txt") do io		
		lines = readlines(io)
	end
end

# ╔═╡ Cell order:
# ╠═6bebfe90-2fbf-11ec-0cc9-837156669369
# ╠═fd17066b-a5ac-4542-b892-d796a2075c20
# ╟─307b1394-8aa5-42e3-abc2-49741bb33f01
# ╠═76dec794-10d8-4487-8859-8f174d520b4c
