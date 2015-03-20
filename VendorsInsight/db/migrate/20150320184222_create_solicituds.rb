class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.date :fecha
      t.string :cliente
      t.references :vendedor, index: true
      t.references :diseniador, index: true
      t.string :linea
      t.string :tipo
      t.boolean :set_tallas
      t.boolean :contra_muestra
      t.string :referencia
      t.integer :talla
      t.string :tela_sugerida
      t.boolean :muestra_tela
      t.string :nombre_tela
      t.boolean :adjunto
      t.integer :unidades
      t.string :especificaciones

      t.timestamps null: false
    end
    add_foreign_key :solicituds, :usuarios
    add_foreign_key :solicituds, :usuarios
  end
end
