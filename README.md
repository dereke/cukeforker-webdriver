Runs your cucumber features in parallel (depends on cukeforker) and manage the webdriver ports

```ruby
  CukeForker::WebDriver::Runner.run(
      ['features/one.fature', 'features/two.feature', 'features/three.feature'],
      :max => 2
  )
```

The port management code was taken from this sample https://gist.github.com/949241 provided by Jari Bakken 