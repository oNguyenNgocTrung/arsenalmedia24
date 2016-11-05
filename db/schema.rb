# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161105135531) do

  create_table "completitions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description",    limit: 65535
    t.integer  "country_id"
    t.string   "full_name"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.float    "height",         limit: 24
    t.string   "avatar"
    t.string   "wiki_url"
    t.string   "twitter_id"
    t.string   "facbook_id"
    t.string   "instargram_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["country_id"], name: "index_managers_on_country_id", using: :btree
  end

  create_table "match_commentaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "match_id"
    t.integer  "min"
    t.string   "content"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_commentaries_on_match_id", using: :btree
    t.index ["video_id"], name: "index_match_commentaries_on_video_id", using: :btree
  end

  create_table "match_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "match_id"
    t.string   "min"
    t.integer  "category"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_details_on_match_id", using: :btree
    t.index ["player_id"], name: "index_match_details_on_player_id", using: :btree
    t.index ["team_id"], name: "index_match_details_on_team_id", using: :btree
  end

  create_table "match_line_ups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "position"
    t.integer  "category"
    t.integer  "time_in"
    t.integer  "time_out"
    t.string   "highlight_img"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["match_id"], name: "index_match_line_ups_on_match_id", using: :btree
    t.index ["player_id"], name: "index_match_line_ups_on_player_id", using: :btree
  end

  create_table "match_statistics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "match_id"
    t.integer  "home_shots_on_target"
    t.integer  "guest_shots_on_target"
    t.integer  "home_shots_off_target"
    t.integer  "guest_shots_off_target"
    t.integer  "home_possession"
    t.integer  "guest_possession"
    t.integer  "home_corners"
    t.integer  "guest_corners"
    t.integer  "home_offsides"
    t.integer  "guest_offsides"
    t.integer  "home_fouls"
    t.integer  "guest_fouls"
    t.integer  "home_yellow_cards"
    t.integer  "guest_yellow_cards"
    t.integer  "home_red_cards"
    t.integer  "guest_red_cards"
    t.integer  "home_goal_kicks"
    t.integer  "guest_goal_kicks"
    t.integer  "home_treatments"
    t.integer  "guest_treatments"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["match_id"], name: "index_match_statistics_on_match_id", using: :btree
  end

  create_table "matches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "completition_id"
    t.integer  "season_id"
    t.datetime "date"
    t.integer  "stadium_id"
    t.string   "referee"
    t.string   "highlight_img"
    t.integer  "home_team_id"
    t.integer  "home_team_goal"
    t.integer  "guest_team_id"
    t.integer  "guest_team_goal"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["completition_id"], name: "index_matches_on_completition_id", using: :btree
    t.index ["season_id"], name: "index_matches_on_season_id", using: :btree
    t.index ["stadium_id"], name: "index_matches_on_stadium_id", using: :btree
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "full_name"
    t.integer  "team_id"
    t.integer  "country_id"
    t.text     "description",    limit: 65535
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.float    "height",         limit: 24
    t.string   "avatar"
    t.string   "wiki_url"
    t.string   "twitter_id"
    t.string   "facbook_id"
    t.string   "instargram_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["country_id"], name: "index_players_on_country_id", using: :btree
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "seasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stadia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "location"
    t.string   "coordinates"
    t.string   "public_transit"
    t.string   "owner"
    t.string   "operator"
    t.integer  "executive_suites"
    t.integer  "capacity"
    t.integer  "record_attendance"
    t.string   "field_size"
    t.string   "surface"
    t.datetime "broke_ground"
    t.datetime "opened"
    t.integer  "construction_cost"
    t.string   "architect"
    t.string   "structural_engineer"
    t.string   "services_engineer"
    t.string   "general_contractor"
    t.string   "background"
    t.string   "link_detail"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "nickname"
    t.string   "founded"
    t.string   "owner"
    t.integer  "stadium_id"
    t.integer  "manager_id"
    t.string   "league"
    t.string   "website"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_teams_on_manager_id", using: :btree
    t.index ["stadium_id"], name: "index_teams_on_stadium_id", using: :btree
  end

  create_table "video_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "video_category_id"
    t.integer  "match_id"
    t.integer  "player_id"
    t.string   "description"
    t.string   "facebook_url"
    t.string   "vidme_url"
    t.string   "youtube_url"
    t.string   "dailymotion_url"
    t.string   "other_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["match_id"], name: "index_videos_on_match_id", using: :btree
    t.index ["player_id"], name: "index_videos_on_player_id", using: :btree
    t.index ["video_category_id"], name: "index_videos_on_video_category_id", using: :btree
  end

end
