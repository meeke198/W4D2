class Board

    def initialize
        @grid = Array.new(8) { Array.new(8) }

    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @grid[x][y] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise "It's not a piece"
        else  
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        end
    end

    # def valid_pos

    # end

end








class Piece



end