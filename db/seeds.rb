# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DEPARTMENT_NAME = %w[総務部 技術部 営業部]
OFFICE_NAME = %w[東京 仙台 大阪 福岡 大分]

DEPARTMENT_NAME.each.with_index(1) { |department, i| Department.find_or_create_by(id: i, name: department) }
OFFICE_NAME.each.with_index(1) { |office, i| Office.find_or_create_by(id: i, name: office) }
Employee.create!(
  [
    {
      department_id: Department.find_by(name: '総務部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '1', last_name: '山田', first_name: '太郎', account: 'yamada',
                            password: 'hogehoge', email: 'yamada@example.co.jp', date_of_joining: '1991/4/1',
                            employee_info_manage_auth: true, news_posting_auth: false
    },
    {
      department_id: Department.find_by(name: '総務部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '2', last_name: '田中', first_name: '一郎', account: 'tanaka',
                            password: 'hugahuga', email: 'tanaka@example.co.jp', date_of_joining: '1992/4/1',
                            employee_info_manage_auth: true, news_posting_auth: true
    },
    {
      department_id: Department.find_by(name: '技術部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '3', last_name: '佐藤', first_name: '二郎', account: 'sato',
                            password: 'satosato', email: 'sato@example.co.jp', date_of_joining: '1993/4/1',
                            employee_info_manage_auth: true, news_posting_auth: false
    },
    {
      department_id: Department.find_by(name: '営業部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '4', last_name: '高橋', first_name: '三郎', account: 'takahashi',
                            password: 'takataka', email: 'takahashi@example.co.jp', date_of_joining: '1994/4/1',
                            employee_info_manage_auth: false, news_posting_auth: true
    },
    {
      department_id: Department.find_by(name: '技術部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '5', last_name: '中山', first_name: '四郎', account: 'nakayama',
                            password: 'nakayama', email: 'nakayama@example.co.jp', date_of_joining: '1994/4/1',
                            employee_info_manage_auth: false, news_posting_auth: true
    },
    {
      department_id: Department.find_by(name: '営業部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '6', last_name: '相田', first_name: '五郎', account: 'aida',
                            password: 'aidaaida', email: 'aida@example.co.jp', date_of_joining: '1994/4/1',
                            employee_info_manage_auth: false, news_posting_auth: true
    },
    {
      department_id: Department.find_by(name: '営業部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '7', last_name: '木村', first_name: '六郎', account: 'kimura',
                            password: 'kimura', email: 'kimura@example.co.jp', date_of_joining: '1994/4/1',
                            employee_info_manage_auth: false, news_posting_auth: true
    },
    {
      department_id: Department.find_by(name: '営業部').id,
                            office_id: Office.find_by(name: '東京').id,
                            number: '8', last_name: '鈴木', first_name: '七郎', account: 'suzuki',
                            password: 'suzuki', email: 'suzuki@example.co.jp', date_of_joining: '1994/4/1',
                            employee_info_manage_auth: false, news_posting_auth: true
    }
  ]
)
5.times do |n|
  Article.create!(
    title: "あいさつです。",
    content: "こんにちは！",
  )
end
