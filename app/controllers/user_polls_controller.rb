# frozen_string_literal: true

class UserPollsController < ApplicationController
  def index
    @user_polls = UserPoll.all
  end

  def show
    @user_poll = UserPoll.find(params[:id])
    @step = params[:step].present? ? params[:step].to_i : 1
    @set = PollQuestion.where(set: @step)
    @last_step = PollQuestion.where(poll_id: @user_poll.poll.id).maximum(:set)
  end

  def new
    @user_poll = UserPoll.new
    @polls = Poll.all
  end

  def create
    @user_poll = UserPoll.create(user_poll_params)
    redirect_to user_poll_path(@user_poll)
  end

  private

  def user_poll_params
    params.require(:user_poll).permit(%i[email poll_id])
  end
end