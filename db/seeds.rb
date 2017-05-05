# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
user_1 = User.create(username: "user1", name: "pepe", email: "pepe@pepe", password: "pepe")
user_2 = User.create(username: "user2", name: "lulu", email: "lulu@lulu", password: "lulu")
user_3 = User.create(username: "user3", name: "juan", email: "juan@juan", password: "juan")

survey1 = Survey.create(user_id: user_1.id, survey_name: "Encuesta Pepe")
survey2 = Survey.create(user_id: user_2.id, survey_name: "Enwcuesta Lulu")
survey3 = Survey.create(user_id: user_3.id, survey_name: "Encuesta Juan")


question_1 = Question.create(survey_id: survey1.id, question_name: "¿Cuanto timpo llevas en CODEA?")
question_2 = Question.create(survey_id: survey1.id, question_name: "¿Cual es tu comida preferida?")

question_3 = Question.create(survey_id: survey2.id, question_name: "¿Animal que te gusta?")
question_4 = Question.create(survey_id: survey2.id, question_name: "¿Porque llueve?")

question_5 = Question.create(survey_id: survey3.id, question_name: "¿Que musica te gusta")
question_6 = Question.create(survey_id: survey3.id, question_name: "¿Pelicula favorita?")


answer_option1 = AnswerOption.create(question_id: question_1.id, option_name: "1 mes")
answer_option2 = AnswerOption.create(question_id: question_1.id, option_name: "3 mes")
answer_option3 = AnswerOption.create(question_id: question_1.id, option_name: "4 mes")

answer_option4 = AnswerOption.create(question_id: question_2.id, option_name: "arroz")
answer_option5 = AnswerOption.create(question_id: question_2.id, option_name: "burger")
answer_option6 = AnswerOption.create(question_id: question_2.id, option_name: "ensaladas")

answer_option7 = AnswerOption.create(question_id: question_3.id, option_name: "perro")
answer_option8 = AnswerOption.create(question_id: question_3.id, option_name: "gato")
answer_option9 = AnswerOption.create(question_id: question_3.id, option_name: "leon")

answer_option10 = AnswerOption.create(question_id: question_4.id, option_name: "no se")
answer_option11 = AnswerOption.create(question_id: question_4.id, option_name: "ciclo del agua")
answer_option12 = AnswerOption.create(question_id: question_4.id, option_name: "no se")

answer_option13 = AnswerOption.create(question_id: question_5.id, option_name: "rock")
answer_option14 = AnswerOption.create(question_id: question_5.id, option_name: "pop")
answer_option15 = AnswerOption.create(question_id: question_5.id, option_name: "metal")

answer_option16 = AnswerOption.create(question_id: question_6.id, option_name: "no tengo")
answer_option17 = AnswerOption.create(question_id: question_6.id, option_name: "titanic")
answer_option18 = AnswerOption.create(question_id: question_6.id, option_name: "batman")


estadistica1 = Estadistica.create(user_id: user_1.id, survey_id: survey1.id, answer_option_id: answer_option1.id)
estadistica2 = Estadistica.create(user_id: user_1.id, survey_id: survey1.id, answer_option_id: answer_option5.id)

estadistica3 = Estadistica.create(user_id: user_2.id, survey_id: survey1.id, answer_option_id: answer_option8.id)
estadistica4 = Estadistica.create(user_id: user_2.id, survey_id: survey1.id, answer_option_id: answer_option11.id)

estadistica5 = Estadistica.create(user_id: user_3.id, survey_id: survey1.id, answer_option_id: answer_option15.id)
estadistica6 = Estadistica.create(user_id: user_3.id, survey_id: survey1.id, answer_option_id: answer_option17.id)
