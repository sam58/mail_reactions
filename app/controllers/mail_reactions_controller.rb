class MailReactionsController < ApplicationController

  def index
    @mailRecords = [{title:'12',description:2},{title:'234',description:3},{title:'567e',description:4}]
    @mailRecords.each do |el|
      puts "!!!!!!! el =  #{el}"
    end

  end

  def add
  end

  def remove
  end

  def check
  end
end
