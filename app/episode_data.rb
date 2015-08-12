require 'imdb'
# Useful to populate a lovely database to make further transformations from
# imdb faster
class EpisodeData
  def self.extract
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
          characters: episode.cast_characters.to_s,
          members: episode.cast_members.to_s,
          member_characters: episode.cast_members_characters.to_s
        })
      end
    end
  end
end
