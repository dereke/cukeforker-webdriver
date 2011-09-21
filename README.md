
Runs your cucumber features in parallel (depends on cukeforker) and manage the webdriver ports

```ruby
  CukeForker::WebDriver::Runner.run(
      features,
      :max => 5
  )
```
