## Hello world

This repo is for use only within Flick to come to terms with Ruby concepts

- `/concepts` contains explanatory content.
- `/exercises` contains files demonstrating the above concepts, and is a playground to experiment in.
- `/tests` contains failing tests against the relevant file in `/exercises`.

It is up to the dev viewing this to amend the code in `/exercises` to get all tests passing.
Files in the `/test` directory should not need any editing.

## To Start

- Pull down this repo and create a new branch off of `main`
- Edit files in exercises at will and try to get the tests passing per instructions below
- As this project is pure ruby, you do not need to run bundler.
- All concepts, exercises and tests have the same name so that they are easy to find.

## Run the tests:
```
gem install minitest
```

Run the tests from the tests directory using the following command:

```
cd /tests
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