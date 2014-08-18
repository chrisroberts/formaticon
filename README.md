## Formaticon

Stop re-inventing the configuration file wheel.

### Ini

* `Formaticon::Helpers.ruby_to_ini(hash)`

Original ruby:

```ruby
{
  'default' => {
    'fubar' => true,
    'foobar' => false,
    'fauxbar' => OHAI,
    'foobars' => 3
    'fubars' => 'Lots of them'
  },
  'custom' => {
    'bing' => 'bang'
  }
}
```

Formatted output:

```
[default]
fubar = yes
foobar = no
fauxbar = OHAI
foobars = 3
fubars = "Lots of them"
[custom]
bing = "bang"
```

### Xml

* `Formaticon::Helpers.ruby_to_xml(hash)`

Original ruby:

```ruby
{
  :fubar => {
    :foobar => {
      :@name => 'Fubar',
      :@class => 'So Classy'
      :fauxbar => 'BANG'
    }
  },
  :bing => [
    {
      :@name => 'boom'
    },
    {
      :@name => 'bam'
    }
  ]
}
```

Formatted output:

```
<fubar>
  <foobar name="Fubar" class="So Classy">
    <fauxbar>BANG</fauxbar>
  </foobar>
  <bing name="boom"/>
  <bing name="bam"/>
</fubar>
```

### Erlang

* `Formaticon::Helpers.ruby_to_erl(hash)`

Original ruby:

```ruby

```

# Info

* Repository: https://github.com/chrisroberts/formaticon