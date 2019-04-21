require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # 3.4.2演習
  # タイトルの重複している部分をsetupメソッドで一元化
  # def setupは各テストが実行される直前で実行されるメソッド
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # 演習リスト３．４２rootルーティングに対するテスト
  test "should get root" do
    get root_url
    assert_response :success
  end

# StaticPagesコントローラのデフォルトのテスト
  test "should get home" do
    # Homeページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。
    # そうすれば、リクエストに対するレスポンスは[成功]になるはず。
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    # 書式 assert_select(セレクタ, [条件], [メッセージ])
    # 使用例 assert_select 'title', "Sign Up page"だったら、title要素の内容を検証する際に使う
    # ※アサーションとは、ある条件が成立しているかどうかをチェックすることを言う
  end

  test "should get help" do
    # helpページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。
    # そうすれば、リクエストに対するレスポンスは[成功]になるはず。
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    # aboutページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。
    # そうすれば、リクエストに対するレスポンスは[成功]になるはず。
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
