class LyricAnswersController < ApplicationController

    def index
        lyric_answers = LyricAnswer.all
        render json: lyric_answers
    end

    def show 
        lyric_answer = LyricAnswer.find(params[:id])
        render json: lyric_answer
    end
end
