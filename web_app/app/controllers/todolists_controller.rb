class TodolistsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list = List.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # ２. DBに保存するためのsaveメソッド実行
    if @list.save
      # ３. トップ画面へリダイレクト
      redirect_to todolist_path(@list.id)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  def destroy
    # 1件レコード取得
    list = List.find(params[:id])
    # 削除処理
    list.destroy
    # 一覧画面へリダイレクト
    redirect_to todolists_path
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
