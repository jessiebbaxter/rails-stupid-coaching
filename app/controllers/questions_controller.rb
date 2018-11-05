class QuestionsController < ApplicationController
	def ask
	end

	def answer
		# raise
		if params[:question] == "I am going to work"
			@answer = "Great!"
		elsif params[:question].include? "?"
			@answer = "Silly question, get dressed and go to work!"
		elsif params[:question] == ""
			@answer = "So, do you have a question for me or what?"
		else @answer = "I don't care, get dressed and go to work!"
		end
	end
end


# LOGIC
# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will 
# answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!