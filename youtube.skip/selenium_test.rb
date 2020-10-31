require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://www.google.com/"

element = driver.find_element(:name, "q")

element.send_keys("rubyprogramming")
sleep 1

element.send_keys(:return)
sleep 1

#ここからyoutubeに移動
driver.navigate.to "https://www.youtube.com/"

element2 = driver.find_element(:name, "search_query")
sleep 1

element2.send_keys("rubyprogramming")
sleep 1

element2.send_keys(:return)
sleep 1

driver.navigate.to "https://m.youtube.com/watch?pbjreload=101&t=1391s&v=t_ispmWmdjY"
sleep 5

driver.quit
