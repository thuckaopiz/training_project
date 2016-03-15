namespace :db do
  desc "Remaking data"
  task remake_data: :environment do
    puts "Reset"
    Rake::Task["db:migrate:reset"].invoke

    puts "Create User"
    10.times {|i| User.create full_name: Faker::Name.name, email: Faker::Internet.email}

    puts "Create Examination"
    10.times {
      e = Examination.create name: Faker::Name.name,
                         examiner: User.all.sample,
                         duration: 40
      10.times do |i|
        e.questions.build content: Faker::Lorem.paragraphs
      end
      e.save
    }

    puts "Create Option"
    Question.all.each do |question|
      4.times{
        question.options.build correct: false,
                               content: Faker::Lorem.paragraphs
      }
      question.options.sample.correct = true
      question.save
    end

    puts ""
    puts "Create AnswerSheet"
    100.times{
      a = AnswerSheet.create examinee: User.all.sample,
                         examination: Examination.all.sample
      a.examination.questions.each do |question|
        a.answers.create option: question.options.sample
      end
      a.save
    }
  end
end
