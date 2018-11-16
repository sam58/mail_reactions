class MailReactionsController < ApplicationController

  #отображать в шаблоне админских настроек
  layout 'admin'
  #выключить меню над формой
  self.main_menu = false
  #Определяет какой будет пункт меню подсвечен
  menu_item :mail_reactions

  # не позволяем залезть не админу
  before_action :require_admin

  #служебка по созданию-заполнению записей, которые будут редактироваться
  before_action :build_new_mail_record, :only => [:new, :create]
  #require_sudo_mode :update, :destroy #запросит еще раз пароль перед указанными потенциально опасными операциями

  def index
    puts '!!!!!!!!!!!!!!!indexindexindexindexindexindexindexindexindexindexindexindexindexindexindexindexindexindex'
    @mail_source_pages, @mail_sources = paginate MailRecord, :per_page => 25
  end

  def new
    puts '!!!!!!!!!!!!!!!new newn ew'
  end

  def create
    if @mail_record.save
      flash[:notice] = l(:notice_successful_create)
      redirect_to mail_reactions_path
    else
      render :action => 'new'
    end
  end

  def edit
    puts '!!!!!!!!!!!!!!!editeditediteditediteditediteditediteditediteditediteditediteditediteditediteditediteditedit'
    # redirect_to action: 'index'
  end

  def show
  end


  def delete
  end


  def update
  end

  def destroy
  end


  #
  def build_new_mail_record
    # @mail_record = MailRecord.new_subclass_instance(params[:type] || 'IMAP')
    @mail_record = MailRecord.new
    if @mail_record
      @mail_record.safe_attributes = params[:mail_record]
    else
      render_404
    end
  end
end
