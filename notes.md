Authorization only admin or create can delete

edited show.html.erb and question_controller


Gems ->> cancancan, pundit

in terminal -> rails g cancan:ability

edited ability.rb


rails g migration add_is_admin_to_users is_admin:boolean

added ", default: false to migration"


make admin in c
  u = User.last
  u.is_admin = true
  u.save






rails g controller admin/dashboard
added dashboard routes


edited admin controller

app/views/admin/dashboard/index.html.erb


create base controller

layout admin in base controller
create layout



hits public, then goes to routes
hash -> same input, same output


minimize requests - > combine all files into one

rails assets:precompile -> not needed but joins files



Deploy to heroku ->
      a little more expensive
