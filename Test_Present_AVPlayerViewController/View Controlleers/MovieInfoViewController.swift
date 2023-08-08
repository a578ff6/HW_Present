//
//  MovieInfoViewController.swift
//  Test_Present_AVPlayerViewController
//
//  Created by 曹家瑋 on 2023/8/7.
//

import UIKit
import AVKit            // 播放影片
import SafariServices   // 顯示網頁使用

/// MovieInfoViewController 用於顯示和操作電影的資料。
class MovieInfoViewController: UIViewController {

    /// 電影標題
    @IBOutlet weak var movieTitleLabel: UILabel!
    /// 電影封面
    @IBOutlet weak var moviePosterImageView: UIImageView!
    /// 電影簡介介紹
    @IBOutlet weak var movieDescriptionTextView: UITextView!
    /// 電影片長
    @IBOutlet weak var movieDurationLabel: UILabel!
    /// 電影上映時間
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    
    /// 建立電影的資料
    var movies: [Movie] = [
        Movie(title: "奧本海默", movieCoverName: "OppenheimerCover", movieDescription: "謎一般的男人是如何陷入一個自相矛盾的困境，他為了拯救這個世界，必須先毀滅它。美國與納粹正在進行軍事競爭，如果納粹搶先一步發明原子彈，後過不堪設想，於是奧本海默提議召集所有美國最優秀的科學家和人才，設立一座秘密實驗室並打造一個城鎮讓家屬一起陪同，傾全力要完成人類史上最重要的發明，這攸關人類的生死存亡，但他能創造這個奇蹟，全世界將永遠記得這一天，這項研究成果也會為人類帶來前所未見的和平。\n這部電影的劇本中一個極其重要的元素，就是交叉呈現彩色和黑白畫面。那該怎麼拍攝這部電影？因為65釐米黑白膠卷並不存在，所以就必須運用先進技術自行製造，真的就是自己製造拍攝這部電影的黑白膠卷，並且將巨大規格的黑白膠卷投射在巨大的IMAX銀幕，出來的效果真的是一種既神奇又啟發人心的觀影經驗。", trailerFileName: "Oppenheimer", movieDuration: "180分鐘", releaseDate: "2023/07/21", websiteUrlName: "https://www.imdb.com/title/tt15398776/?ref_=hm_top_tt_i_1"),
        Movie(title: "芭比", movieCoverName: "BarbieCover", movieDescription: "本片由《淑女鳥》葛莉塔潔薇執導，《重磅腥聞》瑪格羅比和《樂來越愛你》萊恩葛斯林主演芭比和肯尼。生活在芭比樂園，就是身處一個完美地方過著完美的人生，除非你遇到全面性的存在危機，或者你剛好是肯尼。\n芭比（瑪格羅比 飾演）在一個完美的地方過著完美的人生，會舉辦超級盛大的派對，有華麗音樂及排舞，每天都過著很棒的日子。但有一天怪事開始發生在芭比身上，她的洗澡水不熱，會從屋頂跌落，甚至發現她的腳跟竟然貼地了，變成扁平足。之後她決定與肯尼（萊恩葛斯林 飾演）進入真實世界，去探索事情的真相，並且引發一連串的意外事件。", trailerFileName: "Barbie", movieDuration: "114分鐘", releaseDate: "2023/07/20", websiteUrlName: "https://www.imdb.com/title/tt1517268/?ref_=nv_sr_srsg_1_tt_4_nm_3_q_bar"),
        Movie(title: "不可能的任務：致命清算", movieCoverName: "MissionImpossibleCover", movieDescription: "伊森韓特（湯姆克魯斯 飾）和他的IMF（不可能任務情報局）小組展開他們至今最危險的任務，他們必須追查並奪取一項可能威脅全人類安危的全新致命武器，並且不讓它落入壞人手中。全世界未來的命運岌岌可危，來自伊森過去的黑暗勢力也步步逼近，一場橫跨全球的生死追逐就此展開。當他面對神祕可怕且力量強大的敵人，伊森就被迫面對他的任務比任何事情都還要更重要，就連他最在乎的人的性命也包括在內，他該如何抉擇。\n為了讓湯姆能夠模擬跳躍動作，拍攝團隊在英國的採石場搭建跳台坡道，採石場擺滿紙箱用來承接摩托車，用不同角度打造虛擬跳台坡道，精準計算湯姆應該跳躍的弧度，必須能夠固定地預測湯姆在三度空間中的位置，湯姆身上有一片GPS晶片，紀錄湯姆每一次的跳躍，加上他飆車的速度，以及當時是逆風或是側風，經過多次的測試，就能得到一致的數據，每一次拍攝都看得到他跳得多高，這樣無人機和攝影機才能在正確位置，近距離捕捉到他飛越的畫面。阿湯哥說：「特技關鍵是每一次都能達到某個速度，沒有車速表，只能靠引擎聲和感覺，當我放開摩托車，就利用迎面而來的風，再縮住胸部，就能讓我往上飛躍。」", trailerFileName: "Mission_ Impossible", movieDuration: "163分鐘", releaseDate: "2023/07/08", websiteUrlName: "https://www.imdb.com/title/tt9603212/?ref_=tt_mv_close"),
        Movie(title: "灌籃高手", movieCoverName: "TheFirstSlamDunkCover", movieDescription: "《灌籃高手The First Slam Dunk》作為井上雄彥首部大銀幕作品，更加具備原創精神，他誠懇地對粉絲喊話，對陌生的人來說，這是初次認識的作品，對於熟悉的人來說，也像是第一次見到一樣，希望大家帶著初心來看《灌籃高手The First Slam Dunk》找回最初的悸動。\n「教練，我想打籃球！」火紅32年的經典漫畫《灌籃高手》從1990年連載到1996年，人物角色為了籃球比賽揮灑熱血汗水激勵不少人骨子裡的「籃球魂」，光在日本的發行量就超過1億2千萬冊，在台灣也擄獲不少粉絲，櫻木花道、流川楓、宮城良田、三井壽、赤木剛憲、赤木晴子等角色都各自有擁護者；儘管連載結束26年，書迷一直引頸期盼作品能回歸。\n2019年當原作井上雄彥在社群公佈櫻木花道的繪圖時，關注度瞬間破表，大家紛紛留言回憶起當年追漫畫跟動畫的感動，就知道書迷有多期待。", trailerFileName: "THE FIRST SLAM DUNK", movieDuration: "124分鐘", releaseDate: "2023/01/13", websiteUrlName: "https://www.imdb.com/title/tt15242330/?ref_=tt_mv_close"),
        Movie(title: "陰兒房：鬼門陰深處", movieCoverName: "InsidiousTheRedDoor", movieDescription: "《陰兒房》原班人馬回歸，蘭伯特家族駭人故事的最終章。為了一勞永逸解決家人的惡夢，喬許和已經長大在大學就讀的兒子達頓，決定回到陰深處面對他們家族黑暗的過去，更深入紅門後的世界與惡魔對決。\n對於自己的御用男星擔任《陰兒房》系列電影的導演，監製溫子仁表示非常興奮：「我與派翠克已經是多年的好友，他對於電影充滿熱情與知識，我們時常會在拍片空檔討論各種類型的電影，所以這次轉任導演我真的一點也不意外，而且又是《陰兒房》系列，我很開心是他來擔當這個責任。」", trailerFileName: "Insidious", movieDuration: "107分鐘", releaseDate: "2023/07/14", websiteUrlName: "https://www.imdb.com/title/tt13405778/?ref_=tt_mv_close")
    ]
    
    /// 當前選定電影的索引
    var currentMovieIndex = 0
    
    /// viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始載入電影資訊
        updateMovieInfo()
    }
    
    /// 播放影片的按鈕（載入影片後自動播放的版本）
    @IBAction func playVideoButtonTapped(_ sender: Any) {
        
        // 檢查影片檔案是否存在於 App 的 Bundle 中（播放選定電影的預告片）
        if let videoUrl = movies[currentMovieIndex].trailerURL {
            
            let videoPlayer = AVPlayer(url: videoUrl)       // 使用影片的 URL 初始化 AVPlayer
            let videoController = AVPlayerViewController()  // 建立 AVPlayerViewController 來展示影片
            videoController.player = videoPlayer            // 將 AVPlayer 與 AVPlayerViewController 關聯
            
            // 呈現 AVPlayerViewController，呈現完成後，透過尾隨閉包播放影片
            present(videoController, animated: true) {
                videoPlayer.play()
            }
        }
        
    }
    
    /// 網站連結按鈕（會先跳出警告UIAlertController，當使用者點擊確認才會進入網站webController）
    @IBAction func openWebPageButtonTapped(_ sender: UIButton) {
        // 創建警告控制（參數 preferredStyle 傳入 .alert 將顯示從中間彈出的視窗）
        let webAlertController = UIAlertController(title: "前往網站", message: "是否要前往此網站", preferredStyle: .alert)
        
        // 利用 UIAlertAction 生成視窗上顯示的按鈕。
        // 創建確認按鈕：點擊後運用尾隨閉包執行透過 present 運用 SFSafariViewController 顯示網站內容
        let confirmAction = UIAlertAction(title: "確認", style: .default) { _ in
            if let webUrl = self.movies[self.currentMovieIndex].websiteURL {
                let webController = SFSafariViewController(url: webUrl)
                self.present(webController, animated: true)
            }
        }
        
        // 創建取消按鈕（因此style為.cancel）
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        // 將按鈕添加到警告控制器
        webAlertController.addAction(confirmAction)
        webAlertController.addAction(cancelAction)
        
        // 呈現警告控制器
        present(webAlertController, animated: true)
    }
    
    /// 讓使用者分享內容
    @IBAction func shareMovieInfoButton(_ sender: Any) {
        // 使用 guard 確保當前的電影索引 currentMovieIndex 不超出 movies 的範圍
        // 如果 currentMovieIndex 大於或等於 movies 的數量，則索引無效，代表沒有對應的電影（基本上不會發生，單純練習guard）
        guard currentMovieIndex < movies.count else {return}
        
        // 取得當前電影
        let currentMovie = movies[currentMovieIndex]
        
        // 要分享的內容，電影名稱、封面、簡介、網站連結、影片
        let shareTitle = currentMovie.title
        let shareImage = currentMovie.movieCover
        let shareDescription = currentMovie.movieDescription
        let shareWebsiteUrl = currentMovie.websiteURL
        let shareVideoUrl = currentMovie.trailerURL

        
        // 將要分享的內容放入陣列（使用陣列 itemsToShare 可以將要分享的內容先放入陣列，然後一次性傳遞給 UIActivityViewController）
        var itemsToShare = [Any]()
        itemsToShare.append(shareTitle)         // 電影名稱
        itemsToShare.append(shareDescription)   // 電影簡介內容
        
        // 如果 shareImage 非 nil，則添加到陣列（電影封面）
        if let image = shareImage {
            itemsToShare.append(image)
        }
        // 如果 shareWebsiteUrl 非 nil，則添加到陣列（電影網站連結）
        if let websiteUrl = shareWebsiteUrl {
            itemsToShare.append(websiteUrl)
        }
        /// 如果 shareVideoUrl 非 nil，則添加到陣列（電影預告片檔），添加之後影響到提醒事項。
        if let videoUrl = shareVideoUrl {
            itemsToShare.append(videoUrl)
        }
        
        // 建立分享控制器，用於顯示分享選項
        let activityViewController = UIActivityViewController(activityItems: itemsToShare, applicationActivities: nil)
        
        // 呈現分享控制器
        present(activityViewController, animated: true)
    }
    
    
    /// 上一頁
    @IBAction func previousPageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        if currentMovieIndex > 0 {
            currentMovieIndex -= 1
            updateMovieInfo()
            
        } else {
            currentMovieIndex = movies.count - 1
            updateMovieInfo()
            
        }
    }
    
    /// 下一頁
    @IBAction func nextPageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        if currentMovieIndex < movies.count - 1 {
            currentMovieIndex += 1
            updateMovieInfo()
        } else {
            currentMovieIndex = 0
            updateMovieInfo()
            
        }
    }
    
    /// 更新電影資訊
    func updateMovieInfo() {
        // 取得當前選定的電影
        let movie = movies[currentMovieIndex]
        
        movieTitleLabel.text = movie.title                            // 電影名稱顯示在 movieTitleLabel
        moviePosterImageView.image = movie.movieCover                 // 電影封面顯示在 moviePosterImageView
        movieDescriptionTextView.text = movie.movieDescription        // 電影簡介描述顯示在 movieDescriptionTextView
        movieReleaseDateLabel.text = movie.releaseDate                     // 電影上映時間顯示在 movieReleaseDate
        movieDurationLabel.text = movie.movieDuration
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}








/// 初版練習（已無功能）
/// 播放影片不會自動播放版本
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    /// 播放影片的按鈕（載入影片後還不會自動播放的版本）
//    @IBAction func playVideoButtonTapped(_ sender: Any) {
//
//        // 檢查影片檔案是否存在於 App 的 Bundle 中
//        if let videoUrl = Bundle.main.url(forResource: "Oppenheimer", withExtension: "mp4") {
//
//            let videoPlayer = AVPlayer(url: videoUrl)       // 使用影片的 URL 初始化 AVPlayer
//            let videoController = AVPlayerViewController()  // 建立 AVPlayerViewController 來展示影片
//            videoController.player = videoPlayer            // 將 AVPlayer 與 AVPlayerViewController 關聯
//
//            // 呈現 AVPlayerViewController 來播放影片，並設置動畫效果
//            present(videoController, animated: true)
//
////            show(videoController, sender: nil)
//        }
//
//    }
//
//}
//
//
///*
// 這裡的重點在於使用了尾隨閉包，在 present(_:animated:completion:) 方法完成動畫後自動播放影片。
// */
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    /// 播放影片的按鈕（載入影片後自動播放的版本）
//    @IBAction func playVideoButtonTapped(_ sender: Any) {
//
//        // 檢查影片檔案是否存在於 App 的 Bundle 中
//        if let videoUrl = Bundle.main.url(forResource: "Oppenheimer", withExtension: "mp4") {
//
//            let videoPlayer = AVPlayer(url: videoUrl)       // 使用影片的 URL 初始化 AVPlayer
//            let videoController = AVPlayerViewController()  // 建立 AVPlayerViewController 來展示影片
//            videoController.player = videoPlayer            // 將 AVPlayer 與 AVPlayerViewController 關聯
//
//            // 以動畫方式呈現 AVPlayerViewController
//            // 呈現完成後，透過尾隨閉包播放影片
//            present(videoController, animated: true) {
//                videoPlayer.play()
//            }
//        }
//
//    }
//
//}
