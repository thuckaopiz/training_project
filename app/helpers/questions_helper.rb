module QuestionsHelper
  OPTION = ["A", "B", "C", "D"]
  def print_option option, index, correct_option=false
    "<p class='" + (correct_option ? "bg-success" : "") +
      "'><b>#{OPTION[index]}.</b>" +
      " <span>#{option.content}</span></p>"
  end

  def print_options_question question
    result = ""
    question.options.each_with_index do |option, index|
      result << print_option(option, index, option.correct)
    end
    result.html_safe
  end
end
