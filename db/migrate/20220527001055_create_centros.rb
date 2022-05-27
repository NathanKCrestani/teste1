class CreateCentros < ActiveRecord::Migration[7.0]
  def change
    create_table :centros do |t|
      t.string :Esportivo
      t.string :nome
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :responsavel
      t.string :telefone

      t.timestamps
    end
  end
end
