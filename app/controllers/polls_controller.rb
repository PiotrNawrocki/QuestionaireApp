# frozen_string_literal: true

class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      redirect_to @poll
    else
      render :new
    end
  end

  private

  def poll_params
    params.require(:poll).permit(%i[description])
  end
end
