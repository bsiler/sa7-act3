# Open file
lines = File.readlines('data.csv')

# Clean up data
lines.each do |line|
  line.slice! "\n"
end

keys = lines[0].split(',')
lines.shift
data = []
lines.each do |line|
  data << line.split(',')
end

hashes = []
# For each line of data
(0...data.length).each do |line_number|
  # For each piece of data
  row = {}
  (0...data[line_number].length).each do |element_number|
    row.merge!(keys[element_number] => data[line_number][element_number])
  end
  hashes << row
end

p hashes
