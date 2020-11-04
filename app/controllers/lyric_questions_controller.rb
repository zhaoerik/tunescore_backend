class LyricQuestionsController < ApplicationController

    def index
        lyric_questions = LyricQuestion.all
        render json: lyric_questions
    end

    def show
        lyric_question = LyricQuestion.find(params[:id])
        render json: lyric_question
    end
    
end
