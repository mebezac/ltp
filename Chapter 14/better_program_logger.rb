# Better Program Logger
$depth = 0
def log(description, &block)
  $depth += 1
  how_deep = '  '*$depth
  puts "#{how_deep}Beginning \"#{description}\"..."
  returns = block.call
  puts "#{how_deep}The\"#{description}\" finished, returning: #{returns}"
end

log "Outer Block" do
  log "Inner Block" do
    "This is Returned in the inner block"
  end
  "This is returned in outer block"
end
