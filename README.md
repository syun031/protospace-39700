# テーブル設計

# usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: unique constraint|
| encrypted_password | string | null: |
| name               | string | null: |
| profile            | text   | null: |
| occupation         | text   | null: |
| position           | text   | null: |

# prototypesテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| title              | string | null:       |
| catch_copy         | text   | null:       |
| concept            | string | null:       |
| user               | references | null: foreign_key |

# commentsテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| content            | string | null:       |
| prototype          | text   | null:  foreign_key |
| user               | references | null: foreign_key |
