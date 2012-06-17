class Contact < ActiveRecord::Base
  attr_accessible :conteudo, :data_cadastro, :email, :nome, :telefone
  
  validates :conteudo, :presence => true
  validates :nome, :presence => true
  validates :email, :presence => true,
            :uniqueness => true,
            :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,40}$/i}
            
  validates :telefone, :length => {:within => 0..18}           
end
