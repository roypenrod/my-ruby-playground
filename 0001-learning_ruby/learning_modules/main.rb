#!/usr/bin/ruby
$LOAD_PATH << '.'
require "week"
require "decade"

d1=Decade.new
puts Week::FIRST_DAY
Week.weeksInMonth
Week.weeksInYear
d1.numberOfMonths
