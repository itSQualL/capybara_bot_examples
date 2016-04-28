# Taller creación de bots 28 de abril 2016 
##Instalación

####Ruby con RVM (Ruby Version Manager)
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
```
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

####Gemas a utilizar

Capybara: https://github.com/jnicklas/capybara

Cheatsheet de funciones más utilizadas: https://gist.github.com/zhengjia/428105
```
gem install capybara
```

Selenium webdriver: https://github.com/seleniumhq/selenium
```
gem install selenium
gem install selenium-webdriver
```

Webkit: https://github.com/thoughtbot/capybara-webkit

Como os he comentado, webkit, al contrario que selenium, no levanta la interfaz visual del navegador por lo que es más rápido.

Para hacer uso de él basta con:
```
gem install capybara-webkit
```

Y a la hora de elegir el driver que utlizará capybara usar:
`Capybara.default_driver = :webkit`

##Probando los ejemplos
Recordad que para acceder a la consola de ruby podeis utlizar `irb`
Una vez dentro podemos cargar un archivo utilizando: `load "<path_to_the_file>"`
