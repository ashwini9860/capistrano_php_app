desc "php5-fpm"

task :php5fpm_restart do

on roles(:app) do |h|

if test("sudo service php5-fpm stop && sudo service php5-fpm start")

info "restarted #{h}"

else

error "not restarted #{h}"

end

end

end
