class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.text :conteudo
      t.datetime :data_cadastro

      t.timestamps
    end
  end
end
