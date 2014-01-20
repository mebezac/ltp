# Grandfather Clock

def grandfather_clock(&block)
  current_hour = Time.new.hour
  if current_hour == 0
    twelve_hour_time = 12
  elsif current_hour > 12
    twelve_hour_time = current_hour - 12
  else
    twelve_hour_time = current_hour
  end

  twelve_hour_time.times do
    block.call
  end
end

grandfather_clock do
  puts "Dong!"
end
