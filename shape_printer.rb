def printer spin
  case spin.keys[0]
  when "circle"
    # puts spin["circle"]
    puts "\n"
    str = "#{' ' * 3}#{spin["circle"] * 3}#{' ' * 3}\n"\
    " #{spin["circle"] * 3} #{spin["circle"] * 3} \n"\
    "#{spin["circle"] * 2}#{' ' * 5}#{spin["circle"] * 2}\n"\
    " #{spin["circle"] * 3} #{spin["circle"] * 3} \n"\
    "#{' ' * 3}#{spin["circle"] * 3}#{' ' * 3}\n"
    puts str
  when "triangle"
    puts "\n"
    str = "#{' ' * 4}#{spin["triangle"]}#{' ' * 4}\n"\
    "#{' ' * 3}#{spin["triangle"] * 3}#{' ' * 3}\n"\
    "#{' ' * 2}#{spin["triangle"] * 2} #{spin["triangle"] * 2}#{' ' * 2}\n"\
    " #{spin["triangle"] * 2}#{' ' * 3}#{spin["triangle"] * 2} \n"\
    "#{spin["triangle"] * 9}\n"
    puts str
  when "square"
    puts "\n"
    str = "#{spin["square"] * 9}\n"\
    "#{spin["square"] * 2}#{' ' * 5}#{spin["square"] * 2}\n"\
    "#{spin["square"] * 2}#{' ' * 5}#{spin["square"] * 2}\n"\
    "#{spin["square"] * 2}#{' ' * 5}#{spin["square"] * 2}\n"\
    "#{spin["square"] * 9}\n"
    puts str
  when ""
    puts "\n\n\n  blank\n\n\n"
  end
end

#    ***
#  *** ***
# **     **
#  *** ***
#    ***

#     *
#    ***
#   ** **
#  **   **
# *********

# *********
# **     **
# **     **
# **     **
# *********