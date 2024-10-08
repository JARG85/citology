# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

m1 = Medico.create(nombre: 'Roberto Carlos', especialidad: 'General', num_licencia: '12341234123', horario: '12')
m2 = Medico.create(nombre: 'Josefa Ortiz', especialidad: 'Optometra', num_licencia: '09218374983', horario: '7')
m3 = Medico.create(nombre: 'Cristina Lagart', especialidad: 'Urologa', num_licencia: '666666666', horario: '9')
m4 = Medico.create(nombre: 'Henrry kisingger', especialidad: 'Cardiologo', num_licencia: '696969696', horario: '15')
m5 = Medico.create(nombre: 'Klaus Swap', especialidad: 'Coloproctologo', num_licencia: '424242424242', horario: '15')

p1 = Paciente.create(email: 'ejemplo1@gmail.com', password: '123456', password_confirmation: '123456', nombre: 'Ejemplo 1', numero_identidad: '123412341234', edad: 33, direccion: '33 .33 33 ', telefono: '1234141234', historia_clinica: 'lo que sea')
p2 = Paciente.create(email: 'ejemplo2@gmail.com', password: '123456', password_confirmation: '123456', nombre: 'Ejemplo 2', numero_identidad: '123412341234', edad: 23, direccion: '33 . 33 ', telefono: '1234141234', historia_clinica: 'lo que sea')
p3 = Paciente.create(email: 'ejemplo3@gmail.com', password: '123456', password_confirmation: '123456', nombre: 'Ejemplo 3', numero_identidad: '123412341234', edad: 11, direccion: '33 .33 33 ', telefono: '1234141234', historia_clinica: 'lo que sea')
p4 = Paciente.create(email: 'ejemplo4@gmail.com', password: '123456', password_confirmation: '123456', nombre: 'Ejemplo 4', numero_identidad: '123412341234', edad: 30, direccion: '33 . 33 ', telefono: '1234141234', historia_clinica: 'lo que sea')
