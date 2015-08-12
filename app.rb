require_relative './environment'
require 'imdb'

adventure_time = Imdb::Serie.new("1305826")
adventure_time_season_count = adventure_time.seasons.size

(1..adventure_time_season_count).each do |season_number|
  season = adventure_time.season(season_number)
  season_episode_count = season.episodes.size
  (1..season_episode_count).each do |episode_number|
    episode = season.episode(episode_number)
    #puts episode.inspect
    thing = Episode.create({
      title: episode.title,
      number: episode.episode,
      season: episode.season,
    })
    puts thing
  end
end
