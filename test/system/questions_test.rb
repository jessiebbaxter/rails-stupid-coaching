require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "clicking 'Ask a new question' takes you back to the ask page" do
  	visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
  	click_on "Ask a new question"
  	assert_text "Ask your coach anything"
  end

  test "asking a question, gets a 'silly question' response" do 
    visit ask_url
    fill_in "question", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "telling coach you are going to work, gets a positive response" do    
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "asking nothing, gets a grumpy response" do    
    visit ask_url
    fill_in "question", with: ""
    click_on "Ask"

    assert_text "So, do you have a question for me or what?"
  end
end
