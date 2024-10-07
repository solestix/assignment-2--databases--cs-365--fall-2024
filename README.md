# Fall 2024 Principles of Databases — Assignment 2

* **Read these instructions repeatedly until you understand, then begin your project. If something is not clear, ask.**

## ❖・Before You Begin・❖

1. Log in to GitHub.
2. Fork this repo(sitory). See [this video](http://code-warrior.github.io/tutorials/git/github/forking-and-cloning-at-the-github-web-site/) on how to carry out this step and step `3`.
3. Clone your fork, using either the web site or the GitHub Desktop client.
4. Checkout your personalized branch, the one with your name and GitHub handle.

---

## ❖・Introduction・❖

Create a database of passwords associated with web sites. Your database should consist of the following information:

* Website name and URL
* User’s first name, last name, username, and email address
* Password
* Comment
* Timestamp related to when the password was created

The database should handle the following operations:

* _Create new entries_. For example, you’ve just registered for a new account at `mysql.com`.
* _Update existing entries_. For example, the URL goes from `http` to `https`, or you changed your password.
* _Retrieve an entry_. For example, you want to know when you registered at `mysql.com`, or you want to retrieve the password to your `hartford.edu` account.
* _Remove an entry_. For example, you’ve made too many mistakes in an entry and would like to start over.

Implement the database to handle the aforementioned operations. For the passwords themselves, use MySQL’s `AES_ENCRYPT`. **Do not enter plain text passwords into the database, and, do not use your own real-world passwords**. Once complete, populate the included `setup.sql` with the SQL syntax required to stand up and populate your database with 10 unique entries of your own choosing. Ensure at least two have `https` URLs.

Create MySQL commands to do the following:

* Create a new entry into the database, which already has your 10 initial entries
* Get the password associated with the URL of one of your 10 entries
* Get all the password-related data, including the password, associated with URLs that have `https` in two of your 10 entries
* Change a URL associated with one of the passwords in your 10 entries
* Change any password
* Remove a tuple based on a URL
* Remove a tuple based on a password

---

## ❖・Rules・❖

* The database name **must** be `passwords`.
* `setup.sql` should contain all the SQL code needed to stand up your database. Should you need more files, place them in the root of this repo, and ensure they have `.sql` extensions.
* All the commands mentioned at the end of the **Introduction** section **must** be included in the included `commands.sql` file.

---

## ❖・Grading・❖

| Item                                    | Points |
|-----------------------------------------|:------:|
| _Project implementation (works or not)_ | `33`   |
| _SQL syntax quality_                    | `33`   |
| _Following these instructions_          | `33`   |

---

## ❖・Due・❖

Thursday, 17 October 2024, at 10:00 PM. ***Note*: Per the syllabus, NO late submissions will be accepted**

---

## ❖・Submission・❖

You will need to issue a pull request back into the original repo, the one from which your fork was created for this project. See the **Issuing Pull Requests** section of [this site](http://code-warrior.github.io/tutorials/git/github/index.html) for help on how to submit your assignment.

**Note**: This assignment may **only** be submitted via GitHub. **No other form of submission will be accepted**.
