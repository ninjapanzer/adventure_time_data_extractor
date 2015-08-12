class AddDirectorAndWritersToEpisode < ActiveRecord::Migration

  def change
    change_table :episodes do |t|
      t.integer :sentence_id
      t.integer :document_id
    end
  end

end
