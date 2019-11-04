class Player
  def hand
    puts "数字を入力してください"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"
    
    player_hand = gets.to_i
    return player_hand

    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    program_hand = rand(3)
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
  end
end

class Janken
  def pon(player_hand, enemy_hand)
      
    result = ["グー", "チョキ", "パー"]
    unless player_hand < result.length
      puts "1,2,3のみで入力してください。"
      return true
    end
    puts "相手は#{result[enemy_hand]}を出しました" 
    puts "あなたは#{result[player_hand]}を出しました" 
    
      if (player_hand == 0 && enemy_hand == 1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです。"
      return false
    elsif player_hand == enemy_hand
      puts "引き分け"
      return true
    else 
      puts "あなたの負けです。" 
      return false
    end

    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される

next_game = true
while next_game
  next_game = janken.pon(player.hand, enemy.hand,)
end


# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。