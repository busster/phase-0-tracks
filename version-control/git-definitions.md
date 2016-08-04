# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	*Version control is a system that keeps track of changes to a file or files over time in a repository. It can be used to access specific versions of those files that have been saved. It is useful because every change is archived along with information such as who issued the change and a message about what the change is. It keeps a project organized and protected in case it needs to be rolled back to a previous state as a result of some bug or other issue.*

* What is a branch and why would you use one?
	*A branch is a pointer which points to a particular commit or code state. It allows the developer to create a parallel code state for evolving their code. Branching is useful because you can keep your master branch clean. All of the code that you change will be tested first on a seperate branch before being merged to master so that you know it will work. It is also useful when working in teams so that your work is not conflicting with team members especially when working on different features.*

* What is a commit? What makes a good commit message?
	*A commit is when you record or save changes to your repository. A good commit message is a statement that accurately and specifically describes the changes that are included in the commit. It needs to be specific so you can keep a detailed log of the code. This is especially important when working in teams so that others can be certain about what is happening on in your code.*

* What is a merge conflict?
	*A merge conflict occurs when two branches have changed the same part of a file and are merged together. This is because Git does not know which change should be used. Therefore, you must manually tell Git what to do.*