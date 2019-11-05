class Player
  def hand
    puts "数字を入力してください"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"
    
    input_hand = gets.chomp

    # && AND 〇〇かつ
    # || OR 〇〇または
    if input_hand != "0" && input_hand != "1" && input_hand != "2" 
      puts "0,1,2のみで入力してください。"
      return self.hand
    end

    player_hand = input_hand.to_i
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
  
    puts "相手は#{result[enemy_hand]}を出しました" 
    puts "あなたは#{result[player_hand]}を出しました" 
    
      if (player_hand == 0 && enemy_hand == 1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです。"
    elsif player_hand == enemy_hand
      puts "引き分け"
      player = Player.new
      enemy = Enemy.new
      self.pon(player.hand, enemy.hand)
      
    else 
      puts "あなたの負けです。" 
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
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。