class CreatePnas < ActiveRecord::Migration[6.0]
  def change
    create_table :pnas do |t|
      t.string :country_code_2
      t.string :city
      t.integer :people_id3
      t.string :peop_name_in_country
      t.integer :people_id1
      t.string :affinity_bloc
      t.integer :people_id2
      t.string :people_cluster
      t.string :primary_relig_in_people_cluster
      t.string :country_code_3
      t.string :primary_language_name
      t.integer :population
      t.boolean :window_10_40
      t.string :location_in_country
      t.string :primary_religion
      t.integer :percent_evangelical
      t.integer :percent_adherents
      t.boolean :least_reached
      t.integer :joshua_project_scale
      t.integer :bible_status
      t.boolean :has_jesus_movie_translated
      t.boolean :audio_recordings
      t.string :new_testament_online_code
      t.boolean :indigenous_code
      t.string :latitude
      t.string :longitude
      t.string :photo_url
      t.string :map_url
      t.string :flag_url

      t.timestamps
    end
  end
end
