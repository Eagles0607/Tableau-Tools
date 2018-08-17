#  analyzeSheetFields.rb Copyright (C) 2018  Chris Gerrard
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.  
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

system 'cls'

require 'twb'

$twbCount = 0

$analyzer = Twb::Analysis::SheetFiltersAnalyzer.new

def processTwb twbName
    twb = Twb::Workbook.new twbName
    puts  "\t - #{twb.name}"
    # --
    $analyzer.processTWB twb
    # --
    $twbCount += 1
end

puts  "\n\n "
puts  "  #{$analyzer.funcdoc[:class]}"
puts  "  #{$analyzer.funcdoc[:blurb]}"
puts  "\n "

path = if ARGV.empty? then ['*.twb','*.twbx'] else ARGV[0] end
puts  "  Processing Workbooks matching: '#{path}'\n "
Dir.glob(path) { |twb| processTwb twb if twb =~ /twb[x]?$/ && twb !~ /dot[.]twb[x]?$/}

puts  "\n "
puts  "  Analysis complete, found: #{$twbCount} Workbooks"
puts  "\n"

$analyzer.docfilesdoc.each do |l| 
  puts '  ' + l
end

puts  "\n\n  That's all, folks.\n "  
