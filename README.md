# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ----------------   | -------- | ----------- |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| name               | string   | null: false |

### Association
- has_many :schedules
- has_many :comments

## schedules テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| title               | string     | null: false                    |
| content             | text       | null: false                    |
| user                | references | null: false, foreign_key: true | 

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| message                | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |
| schedule               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :schedule