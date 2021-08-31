class Board

    def initialize
        @grid = Array.new(8) { Array.new(8) }

    end

    def [](pos)
        x, y = pos
        self[x][y]
    end

    def []=(pos, val)
        x, y = pos
        self[x][y] = val
    end

    def move_piece(start_pos, end_pos)
        
    end

end








class Piece



end