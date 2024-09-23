# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_23_105627) do
  create_schema "zhparser"

  # These are extensions that must be enabled in order to support this database
  enable_extension "btree_gin"
  enable_extension "btree_gist"
  enable_extension "hstore"
  enable_extension "plpgsql"
  enable_extension "zhparser"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "article_state", ["draft", "in review", "approved", "published", "archived"]

  create_table "antipattern_examples", force: :cascade do |t|
    t.text "contents"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.enum "status", default: "draft", null: false, enum_type: "article_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "doc"
    t.binary "doc2"
  end

  create_table "blog_posts", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.string "tags", array: true
    t.integer "ratings", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ratings"], name: "index_books_on_ratings", using: :gin
    t.index ["tags"], name: "index_books_on_tags", using: :gin
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bit "settings", limit: 1
    t.bit "setting", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "contents"
  end

  create_table "computers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "convertibles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.inet "ip"
    t.cidr "network"
    t.macaddr "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind"
    t.uuid "uuid"
  end

  create_table "documents", force: :cascade do |t|
    t.binary "payload"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "contents"
    t.index ["book_id"], name: "index_documents_on_book_id"
  end

  create_table "epic_poems", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.json "payload"
    t.jsonb "payload2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.daterange "duration"
    t.interval "duration2"
  end

  create_table "flowers", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.unique_constraint ["position"], deferrable: :immediate
  end

  create_table "jalopies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
    t.index ["user_id"], name: "index_pg_search_documents_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "price", null: false
    t.daterange "availability_range", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.exclusion_constraint "price WITH =, availability_range WITH &&", using: :gist, deferrable: :deferred, name: "price_check"
  end

  create_table "profiles", force: :cascade do |t|
    t.hstore "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bit "settings", limit: 1
    t.index ["username"], name: "index_users_on_username", include: ["id", "created_at"]
  end

  add_foreign_key "books", "users"
  add_foreign_key "documents", "books"
  add_foreign_key "posts", "users"
end
