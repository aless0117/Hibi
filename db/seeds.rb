# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  classroom = Classroom.create([{ name: 'Primero A' }, { name: 'Primero B' },{ name: 'Segundo A' }, { name: 'Segundo B' },{ name: 'Tercero A' }, { name: 'Tercero B' },{ name: 'Cuarto A' }, { name: 'Cuarto B' },{ name: 'Quinto A' }, { name: 'Quinto B' }])
  materias = Subject.create([{ name: 'Matematica' }, { name: 'Castellano' },{ name: 'Fisica' }, { name: 'Quimica' },{ name: 'Arte' }, { name: 'Biologia' },{ name: 'Historia de Venezuela' }, { name: 'Informatica' }])
  horario = Schedule.create([{ start_at: '07:00', end_at: '07:45' }, { start_at: '07:45', end_at: '08:20' },{ start_at: '08:40', end_at: '09:25' }, { start_at: '10:20', end_at: '11:05' }, { start_at: '11:05', end_at: '12:00' }, { start_at: '12:10', end_at: '12:50' }])
  dias = Day.create([{ dia: 'Monday' }, { dia: 'Tuesday' }, { dia: 'Wednesday' }, { dia: 'Thursday' }, { dia: 'Friday' }, { dia: 'Saturday' }, { dia: 'Sunday' }])
