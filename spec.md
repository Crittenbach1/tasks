Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (GroupTask has_many Tasks, User has_many Tasks)
- [x] Include at least one belongs_to relationship (Task belongs_to User, Task belongs_to GroupTask)
- [x] Include at least one has_many through relationship (GroupTask has_many Users through: Tasks, User has_many GroupTasks through: Tasks)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (Name, Status)
- [x] Include reasonable validations for simple model objects (User, GroupTask, Task)
- [x] Include a class level ActiveRecord scope method (GroupTask.group_task_progress, Task.status)
- [x] Include a nested form writing to an associated model using a custom attribute writer (URL: GroupTasks/new, Task)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (OmniAuth)
- [x] Include nested resource show or index (URL: users/2/tasks)
- [x] Include nested resource "new" form (URL: /group_tasks/1/tasks/new)
- [x] Include form display of validation errors (URLs: /group_tasks/1/tasks/new, /group_tasks/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
