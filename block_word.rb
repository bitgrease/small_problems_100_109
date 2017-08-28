def block_word?(word)
  blocks = %w(bo xk dq cp na gt re fs jw hu vi ly zm)
  blocks.none? do |block|
    word.downcase.count(block) >= 2
  end
end