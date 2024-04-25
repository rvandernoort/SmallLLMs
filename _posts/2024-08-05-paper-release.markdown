---
layout: post
title:  "Sustainability of Edge AI at scale - Paper release"
date:   2024-05-01 00:00:00 +0100
categories: GreenAI EdgeAI Sustainability
---
The paper Sustainability of Edge AI at scale is released in both [paper][paper] and [thesis][thesis] format including the [reproducability package][repro]. 

`Abstract`

Edge AI is an architectural deployment tactic that brings AI models closer to the user and data, relieving internet bandwidth usage and providing low latency and privacy. It remains unclear how this tactic performs at scale since the distribution overhead could impact the total energy consumption. We identify four architectural scalability factors that could impact the energy consumption of AI: environment, optimisation, throughput, and overhead such as downloading, verification, and updating the model over time. This work performs an empirical study on the sustainability of Edge AI at scale compared to Cloud AI in terms of energy consumption. Energy consumption measurement experiments are run on a cloud device and multiple edge devices for the environment, various quantized models for optimisation, and various throughput levels per hour. We create a simulation that models the distribution overhead, which we combine with the measurements. We find that all variables impact energy consumption, but the main contributors are environment, throughput, and overhead. We observe that Edge AI is most energy-efficient in low-distribution, low-demand scenarios, whereas in high-distribution, high-demand scenarios Cloud AI is better optimized and outperforms Edge AI in energy efficiency. This means that developers depending on their use case and the project's scalability need to consider these quality attributes for the most sustainable architectural solution.

`Keywords`

- `Sustainable Software Engineering`
- `Green AI`
- `Quantization`
- `Scalability`
- `Edge-Cloud Architecture`
- `Energy-Aware Software`

[paper]: todo
[thesis]: todo
[repro]: https://zenodo.org/records/11065939



<!-- You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/ -->
