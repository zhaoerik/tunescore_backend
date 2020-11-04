class HighScoresController < ApplicationController

    def index
        high_scores = HighScore.all
        render json: high_scores
    end

    def show
        high_score = Highscore.find(params[:id])
        render json: high_score
    end

    def new
        high_score = Highscore.new
    end

    def create
        user = User.find_by(id: params[:user][:id])
        game = Game.find_by(id: params[:game][:id])
        high_score = HighScore.create!(high_score_params)

        if high_score.save
            render json: high_score
        end
    end

    private

    def high_score_params
        params.require(:high_score).permit(*)
    end
end
