# Prefer case over if-elsif when compared value is the same in each "\
# clause.

# bad
if status == :active
  perform_action
elsif status == :inactive || status == :hibernating
  check_timeout
else
  final_action
end

# good
case status
when :active
  perform_action
when :inactive, :hibernating
  check_timeout
else
  final_action
end
