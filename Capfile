load 'deploy' if respond_to?(:namespace)
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
Dir['config/deploy/recipes/*.rb'].each { |plugin| load(plugin) }

load 'config/deploy'
