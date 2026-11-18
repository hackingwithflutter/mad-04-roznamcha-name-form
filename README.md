# Roznamcha: week 4 starter (step 2)

This is Roznamcha, the course app of Mobile Application Development. You build it one step a week from week 3 to week 15, in this repo. This week is step 2: the name form and the home screen.

This project needs Flutter 3.50.0 or newer.

## Get this week's files

Choose one of the two paths. The handout explains both, step by step.

**Continue.** You already have a `roznamcha` repo, and its week 3 tests pass. Commit your work first. Then open a terminal in your repo's folder and run these commands, one at a time:

```bash
git remote add week4 https://github.com/hackingwithflutter/mad-04-roznamcha-name-form.git
git fetch week4
git checkout week4/main -- .
git commit -m "Week 4: add the step 2 starter"
```

The template's version of every file replaces yours. Files that only you have, such as `screenshot.png`, stay.

**Restart.** You have no working `roznamcha` repo. Make a new `roznamcha` repo from this template, as the handout says.

## How to run

1. Connect your Android phone to your laptop with a USB cable. USB debugging must be on.
2. Open a terminal in this folder and run these two commands:

   ```bash
   flutter pub get
   flutter run
   ```

The first build takes several minutes. The untouched starter shows week 3's welcome screen. Tapping Get started does nothing yet.

## Your tasks

Read `lib/main.dart`, `lib/app_flow.dart`, `lib/screens/welcome_screen.dart`, `lib/screens/name_form_screen.dart` and `lib/screens/home_screen.dart` first, in that order; the comments explain the given code. Then do TODO 1 in `welcome_screen.dart`, TODO 2 in `app_flow.dart`, TODO 3 to 5 in `name_form_screen.dart` and TODO 6 in `app_flow.dart`. The handout explains each, and shows the design.

## Tests

Run the tests with this command:

```bash
flutter test
```

There are 23 tests in four files. On the untouched starter, 15 pass and 8 fail. The 15 that pass check given code, week 3's welcome screen among it. The failing tests are expected. GitHub Actions runs the same tests on every push, so it shows a red cross until you finish. When all six TODOs are done, the last line says `All tests passed!`

## My screenshot

![The home screen greeting me on my phone](screenshot.png)

Replace this picture with your own. Take a screenshot of the home screen greeting you by your own name on your phone, name it `screenshot.png`, and put it in the top folder of this repository, next to this README.

## AI note

Replace this line with one sentence that says what you asked AI, or write "I didn't use AI".

## Next weeks

Keep this repo. From week 5, each handout tells you how to add that week's starter files to it, the same way.
