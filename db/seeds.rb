# frozen_string_literal: true

poll = Poll.create(description: 'Choose your favorite operating system')

first_name = Question.create(content: 'First Name', question_type: 'text')
birth_date = Question.create(content: 'Birth date', question_type: 'date')
os_choice = Question.create(content: 'OS of choice', question_type: 'choice')
about = Question.create(content: 'Something about you (140 characters top)', question_type: 'text')
mac_os = Answer.create(content: 'Mac OS')
linux = Answer.create(content: 'Linux')
windows = Answer.create(content: 'Windows')

os_choice.answers << [mac_os, linux, windows]
os_choice.save

PollQuestion.create(set: 1, question_id: first_name.id, poll_id: poll.id)
PollQuestion.create(set: 1, question_id: birth_date.id, poll_id: poll.id)
PollQuestion.create(set: 2, question_id: os_choice.id, poll_id: poll.id)
PollQuestion.create(set: 3, question_id: about.id, poll_id: poll.id)
