Ansible and Wordpress.

Scaling Wordpress using Docker-Compose using HAProxy Frontend to handle the Wordpress Backends.
Controller will be running HAProxy, with [webservers] wordpress backend configured inside hosts/webservers file.

Firstly, you need to edit the file for initial configurations,
located under groupvars/main.yml

* Edit the file to match your criteria:
  linux_user: "user_to_be_created_in_the_OS"
  
  linux_user_password: "user_password_in_the_OS"
  
  app_user: "user_to_runs_the_applications"
  
  app_user_password: "user_password_to_runs_the_applications"
  
  root_password: "to_change_root_password_in_the_OS"
  
  domain_name: "your_domain_name_to_be_used_in_HAProxy"
  
 
* Please be very careful to change user_criteria under Linux OS.

* Edit Instance List in hosts/contoller and hosts/webservers to match your servers.

Usage:
./blog-up.sh
