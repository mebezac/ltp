# Program Logger

def log(description, &block)
  puts "Beginning \"#{description}\"..."
  returns = block.call
  puts "\"#{description}\" finished, returning: #{returns}"
end

log "Outer Block" do
  log "Inner Block" do
    "This is Returned in the inner block"
  end
  "This is returned in outer block"
end
