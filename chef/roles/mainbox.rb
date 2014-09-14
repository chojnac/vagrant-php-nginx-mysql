# Name of the role should match the name of the file
name "mainbox"
#postgresql password: iloverandompasswordsbutthiswilldo
default_attributes(
  "mysql" => {
      "server_root_password" => "somepassword",
      "bind_address" => "127.0.0.1"
  },

)

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
    "recipe[mysql::server]",
    "recipe[php]",
    "recipe[php::module_mysql]",
    "recipe[php-fpm]",
    "recipe[nginx]",
    "recipe[mynginx]"
)
