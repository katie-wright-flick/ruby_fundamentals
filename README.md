## Run the tests:
```
gem install minitest
```

Run the tests from the tests directory using the following command:

```
ruby <filename>_test.rb
```

if you get the following error when running tests:

```
Unable to activate railties-6.1.4.4, because activesupport-7.0.1 conflicts with activesupport (= 6.1.4.4) (Gem::ConflictError)
```

you just need to update railties in your terminal:

```
gem update railties
```