require "pry"
<<<<<<< HEAD

def game_hash
  hash = {
          :home => {
                    :team_name => "Brooklyn Nets",
                    :colors => ["Black", "White"],
                    :players => [
                                 {
                                  :player_name => "Alan Anderson",
                                  :number => 0,
                                  :shoe => 16,
                                  :points => 22,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 3,
                                  :blocks => 1,
                                  :slam_dunks => 1
                                 },
                                 {
                                  :player_name => "Reggie Evans",
                                  :number => 30,
                                  :shoe => 14,
                                  :points => 12,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 12,
                                  :blocks => 12,
                                  :slam_dunks => 7
                                 },
                                 {
                                  :player_name => "Brook Lopez",
                                  :number => 11,
                                  :shoe => 17,
                                  :points => 17,
                                  :rebounds => 19,
                                  :assists => 10,
                                  :steals => 3,
                                  :blocks => 1,
                                  :slam_dunks => 15
                                 },
                                 {
                                  :player_name => "Mason Plumlee",
                                  :number => 1,
                                  :shoe => 19,
                                  :points => 26,
                                  :rebounds => 11,
                                  :assists => 6,
                                  :steals => 3,
                                  :blocks => 8,
                                  :slam_dunks => 5
                                 },
                                 {
                                  :player_name => "Jason Terry",
                                  :number => 31,
                                  :shoe => 15,
                                  :points => 19,
                                  :rebounds => 2,
                                  :assists => 2,
                                  :steals => 4,
                                  :blocks => 11,
                                  :slam_dunks => 1
                                 }
                                ]
          },
          :away => {
                    :team_name => "Charlotte Hornets",
                    :colors => ["Turquoise", "Purple"],
                    :players => [
                                 {
                                  :player_name => "Jeff Adrien",
                                  :number => 4,
                                  :shoe => 18,
                                  :points => 10,
                                  :rebounds => 1,
                                  :assists => 1,
                                  :steals => 2,
                                  :blocks => 7,
                                  :slam_dunks => 2
                                 },
                                 {
                                  :player_name => "Bismack Biyombo",
                                  :number => 0,
                                  :shoe => 16,
                                  :points => 12,
                                  :rebounds => 4,
                                  :assists => 7,
                                  :steals => 22,
                                  :blocks => 15,
                                  :slam_dunks => 10
                                 },
                                 {
                                  :player_name => "DeSagna Diop",
                                  :number => 2,
                                  :shoe => 14,
                                  :points => 24,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 4,
                                  :blocks => 5,
                                  :slam_dunks => 5
                                 },
                                 {
                                  :player_name => "Ben Gordon",
                                  :number => 8,
                                  :shoe => 15,
                                  :points => 33,
                                  :rebounds => 3,
                                  :assists => 2,
                                  :steals => 1,
                                  :blocks => 1,
                                  :slam_dunks => 0
                                 },
                                 {
                                  :player_name => "Kemba Walker",
                                  :number => 33,
                                  :shoe => 15,
                                  :points => 6,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 7,
                                  :blocks => 5,
                                  :slam_dunks => 12
                                 }
                                ]
          }
  }
end

def num_points_scored(player)
  data = game_hash
  data.each do |home_away, category|
    category[:players].each do |stats|
        if stats[:player_name] == player
          return stats[:points]
        end
    end
  end
end

def shoe_size(player)
  data = game_hash
  data.each do |home_away, category|
    category[:players].each do |stats|
        if stats[:player_name] == player
          return stats[:shoe]
        end
    end
  end
end

def team_colors(team)
  data = game_hash
  if team == "Brooklyn Nets"
    return data[:home][:colors]
  else 
    return data[:away][:colors]
  end
end

def team_names
  data = game_hash
  new_array = []
  data.map do |home_away, cat|
    new_array.push(cat[:team_name])
  end
  new_array
end

def player_numbers(team)
  data = game_hash
  new_array = []
  data.each do |home_away, cat|
    if cat[:team_name] == team 
      cat.each do |key, stats|
        if key == :players
          stats.each do |player|
            new_array.push(player[:number])
          end
        end
      end
    end
  end
  new_array
end

def player_stats(player_name)
  data = game_hash
  data.each do |home_away, info|
    info.each do |key, value|
      if key == :players
        value.each do |player|
          if player[:player_name] == player_name
            player.delete(:player_name)
            return player
          end
        end
      end
    end
  end
=======

def game_hash
  hash = {
          :home => {
                    :team_name => "Brooklyn Nets",
                    :colors => ["Black", "White"],
                    :players => [
                                 {
                                  :player_name => "Alan Anderson",
                                  :number => 0,
                                  :shoe => 16,
                                  :points => 22,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 3,
                                  :blocks => 1,
                                  :slam_dunks => 1
                                 },
                                 {
                                  :player_name => "Reggie Evans",
                                  :number => 30,
                                  :shoe => 14,
                                  :points => 12,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 12,
                                  :blocks => 12,
                                  :slam_dunks => 7
                                 },
                                 {
                                  :player_name => "Brook Lopez",
                                  :number => 11,
                                  :shoe => 17,
                                  :points => 17,
                                  :rebounds => 19,
                                  :assists => 10,
                                  :steals => 3,
                                  :blocks => 1,
                                  :slam_dunks => 15
                                 },
                                 {
                                  :player_name => "Mason Plumlee",
                                  :number => 1,
                                  :shoe => 19,
                                  :points => 26,
                                  :rebounds => 11,
                                  :assists => 6,
                                  :steals => 3,
                                  :blocks => 8,
                                  :slam_dunks => 5
                                 },
                                 {
                                  :player_name => "Jason Terry",
                                  :number => 31,
                                  :shoe => 15,
                                  :points => 19,
                                  :rebounds => 2,
                                  :assists => 2,
                                  :steals => 4,
                                  :blocks => 11,
                                  :slam_dunks => 1
                                 }
                                ]
          },
          :away => {
                    :team_name => "Charlotte Hornets",
                    :colors => ["Turquoise", "Purple"],
                    :players => [
                                 {
                                  :player_name => "Jeff Adrien",
                                  :number => 4,
                                  :shoe => 18,
                                  :points => 10,
                                  :rebounds => 1,
                                  :assists => 1,
                                  :steals => 2,
                                  :blocks => 7,
                                  :slam_dunks => 2
                                 },
                                 {
                                  :player_name => "Bismack Biyombo",
                                  :number => 0,
                                  :shoe => 16,
                                  :points => 12,
                                  :rebounds => 4,
                                  :assists => 7,
                                  :steals => 22,
                                  :blocks => 15,
                                  :slam_dunks => 10
                                 },
                                 {
                                  :player_name => "DeSagna Diop",
                                  :number => 2,
                                  :shoe => 14,
                                  :points => 24,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 4,
                                  :blocks => 5,
                                  :slam_dunks => 5
                                 },
                                 {
                                  :player_name => "Ben Gordon",
                                  :number => 8,
                                  :shoe => 15,
                                  :points => 33,
                                  :rebounds => 3,
                                  :assists => 2,
                                  :steals => 1,
                                  :blocks => 1,
                                  :slam_dunks => 0
                                 },
                                 {
                                  :player_name => "Kemba Walker",
                                  :number => 33,
                                  :shoe => 15,
                                  :points => 6,
                                  :rebounds => 12,
                                  :assists => 12,
                                  :steals => 7,
                                  :blocks => 5,
                                  :slam_dunks => 12
                                 }
                                ]
          }
  }
end

def num_points_scored(player)
  data = game_hash
  data.each do |home_away, category|
    category[:players].each do |stats|
        if stats[:player_name] == player
          return stats[:points]
        end
    end
  end
end

def shoe_size(player)
  data = game_hash
  data.each do |home_away, category|
    category[:players].each do |stats|
        if stats[:player_name] == player
          return stats[:shoe]
        end
    end
  end
end

def team_colors(team)
  data = game_hash
  result = []
  data.each do |home_away, category|
    home_away[:team_name].each do |stats|
      if category[:team_name] = team 
        result = category[:team_colors]
      end
    end
  end 
  return result.to_a
>>>>>>> b6bdd2c97daea4a6d154fd046139ef8d88ffb71f
end

def big_shoe_rebounds
  data = game_hash
  largest_shoe_size = 0
  rebounds = 0
  data.each do |home_away, info|
    info[:players].each do |player|
      if player[:shoe] > largest_shoe_size
        largest_shoe_size = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end

