class Checkup
    def initialize(secret, try)
      @secret, @try = secret, try
    end

    def number_match_count
      total_match_count - exact_match_count
    end

    def total_match_count
      secret = @secret.split('')
      @try.split('').inject(0) do |count, n|
        count + (delete_first(secret, n) ? 1 : 0)
      end
    end

    def delete_first(code, n)
      code.delete_at(code.index(n)) if code.index(n)
    end

    def exact_match_count
      (0..3).inject(0) do |count, index|
        count + (exact_match?(@try, index) ? 1 : 0)
      end
    end

    def exact_match?(guess, index)
      @try[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(@try[index]) && !exact_match?(@try, index)
    end
end
