# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery", to: "./node_modules/jquery"
pin "notify", to: "./node_modules/notify-js-legacy/notify"
pin "bootstrap", to: "./node_modules/bootstrap/dist/js/bootstrap"
pin "popper.js", to: "./node_modules/popper.js/dist/popper"
