namespace :sindo do

  task :import => :environment do
    Cliente.delete_all
    Cliente.new(:id => 0, :cpf => "0", :nome => "Richard Keller", :data_nascimento => "10/5/1979", :cep => "78994000", :complemento => "apto 17", :ddd => "011", :telefone => "81625584", :email => "richard@gmail.com").save
    Cliente.new(:id => 1, :cpf => "1", :nome => "Alex Bredariol Grilo", :data_nascimento => "18/11/1992", :cep => "78994800", :complemento => "apto 19", :ddd => "011", :telefone => "83843940", :email => "alex@gmail.com").save
    Cliente.new(:id => 2, :cpf => "2", :nome => "Bruno Buccolo", :data_nascimento => "22/6/1994", :cep => "78956000", :complemento => "apto 15", :ddd => "011", :telefone => "81499470", :email => "bruno@gmail.com").save
    Cliente.new(:id => 3, :cpf => "3", :nome => "Moacyr Ricardo Pereira", :data_nascimento => "12/8/1973", :cep => "78969000", :complemento => "apto 33", :ddd => "011", :telefone => "89291319", :email => "moacyr@gmail.com").save
    Cliente.new(:id => 4, :cpf => "4", :nome => "Douglas Nunes Alves", :data_nascimento => "17/3/1991", :cep => "78931000", :complemento => "apto 68", :ddd => "011", :telefone => "89342692", :email => "douglas@gmail.com").save
    Cliente.new(:id => 5, :cpf => "5", :nome => "Arthur Giro Moreno", :data_nascimento => "12/3/1985", :cep => "78967800", :complemento => "apto 51", :ddd => "011", :telefone => "89247730", :email => "arthur@gmail.com").save
    Cliente.new(:id => 6, :cpf => "6", :nome => "Mariana Gasparini", :data_nascimento => "19/4/1972", :cep => "78999000", :complemento => "apto 30", :ddd => "011", :telefone => "89920578", :email => "mariana@gmail.com").save
    Cliente.new(:id => 7, :cpf => "7", :nome => "Gabriela Doce Oliveira", :data_nascimento => "6/8/1976", :cep => "78944000", :complemento => "apto 69", :ddd => "011", :telefone => "89122811", :email => "gabriela@gmail.com").save
    Cliente.new(:id => 8, :cpf => "8", :nome => "Rudolf Keller", :data_nascimento => "10/9/1984", :cep => "78976000", :complemento => "apto 54", :ddd => "011", :telefone => "82203961", :email => "rudolf@gmail.com").save
    Cliente.new(:id => 9, :cpf => "9", :nome => "Beatriz Delagnese", :data_nascimento => "15/7/1980", :cep => "78967000", :complemento => "apto 39", :ddd => "011", :telefone => "86971648", :email => "beatriz@gmail.com").save
  end
end
