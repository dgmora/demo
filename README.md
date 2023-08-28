# README

Run 
```bash
bundle install
OPENAPI=1 bundle exec rspec
```

You get

```ruby
Failure/Error: elsif o =~ /\n(?!\Z)/  # match \n except blank line at the end of string

ArgumentError:
  invalid byte sequence in UTF-8
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:268:in `visit_String'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:136:in `accept'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:175:in `block in visit_Struct'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:173:in `each'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:173:in `visit_Struct'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:136:in `accept'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/visitors/yaml_tree.rb:118:in `push'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych.rb:514:in `dump'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/3.0.0/psych/core_ext.rb:13:in `to_yaml'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/gems/3.0.0/gems/rspec-openapi-0.8.1/lib/rspec/openapi/result_recorder.rb:18:in `block (4 levels) in record_results!'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/gems/3.0.0/gems/rspec-openapi-0.8.1/lib/rspec/openapi/result_recorder.rb:18:in `open'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/gems/3.0.0/gems/rspec-openapi-0.8.1/lib/rspec/openapi/result_recorder.rb:18:in `block (3 levels) in record_results!'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/gems/3.0.0/gems/rspec-openapi-0.8.1/lib/rspec/openapi/result_recorder.rb:17:in `each'
# /Users/david/.local/share/rtx/installs/ruby/3.0.5/lib/ruby/gems/3.0.0/gems/rspec-openapi-0.8.1/lib/rspec/openapi/result_recorder.rb:17:in `block (2 levels) in record_results!'
```

The error comes from `DocumentsController#create` endpoint, which uses `send_data` with a pdf file
