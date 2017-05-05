enable :sessions

get "/survey_create" do
  @survey = Survey.last
  erb :survey_question
end

post '/create_survey' do
  
  surveyname = params[:survey_name]
  surveyid = Survey.create(user_id: current_user.id, survey_name: params[:survey_name])
  redirect to "/survey_create"
end

get '/find_survey/:id' do
   survey_id = params[:id]
  @survey = Survey.find(survey_id)
  p @survey

   erb :survey_values

end


post '/question_answer_survey' do
 
  new_survey = URI.decode(params[:user_input].gsub("+"," "))
  new_survey = new_survey.split('&')
  cadena = new_survey
    cadena.each do |value|
      array_valor = value.split('=')
      array_variable = array_valor[0].split('_') 
      array_variable[1]
        if array_variable[1] == "question"
           p array_valor[1]
           surveyy = Survey.last
           p surveyy.id
           @question = Question.create(survey_id: surveyy.id, question_name: array_valor[1])
           surveyy.questions << @question
        elsif array_variable[1] == "answer"
           answer = AnswerOption.create(question_id: @question.id, option_name: array_valor[1])
           @question.answer_options << answer
      
        end
    end
end



