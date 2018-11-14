class MailReactionsController < ApplicationController

  #отображать в шаблоне админских настроек
  layout 'admin'
  #выключить меню над формой
  self.main_menu = false
  #Определяет какой будет пункт меню подсвечен
  menu_item :mail_reactions

  # не позволяем залезть не админу
  before_action :require_admin

  #require_sudo_mode :update, :destroy запросит еще раз пароль перед указанными потенциально опасными операциями

  def index
    @mail_source_pages, @mail_sources = paginate MailRecord, :per_page => 25
  end

  def add
  end

  def edit
    puts '123'
    redirect_to action: 'index'
  end

  def remove
  end

  def check
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
