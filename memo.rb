require "csv"

puts "1(新規でメモを作成),2(既存メモを編集する)"
 memo_type = gets.to_i

if memo_type == 1 then
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
uts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  
  memo_type = STDIN.read
  
  CSV.open("#{file_name}.csv",'w') do |memo|
     memo << ["#{memo_type}"]
  end

else
 
  puts "編集したいファイル名を入力してください。"
  file_name = gets.chomp
    
  puts "編集内容を入力してください"
  puts "完了後、Ctrl + Dをおします"
  
  memo_type = STDIN.read
  
  CSV.open("#{file_name}.csv",'a') do |memo|
      memo << ["#{memo_type}"]
  end
  
 end