//
//  MovieModel.swift
//  Test_Present_AVPlayerViewController
//
//  Created by 曹家瑋 on 2023/8/7.
//

import Foundation
import UIKit

/// 電影的資料結構
struct Movie {
    var title: String                 // 電影標題
    var movieCoverName: String        // 電影封面檔案名稱
    var movieDescription: String      // 電影簡介描述
    var trailerFileName: String       // 電影預告片檔案名稱
    var movieDuration: String         // 電影片長
    var releaseDate: String           // 上映日期
    var websiteUrlName: String        // 網站連結名稱
    
    
    // 使用 getter計算屬性 來取得指示的圖檔、影片檔、連結，這些屬性每次被訪問時都會計算其值。
    // 電影封面圖片，透過封面名稱獲取，如果找不到檔案，則返回nil。
    /// 電影封面圖檔
    var movieCover: UIImage? {
        return UIImage(named: movieCoverName)
    }
    
    // 電影預告片URL，透過預告片檔案名稱獲取。如果找不到檔案或格式不正確，則返回nil。
    /// 電影預告片影片檔
    var trailerURL: URL? {
        return Bundle.main.url(forResource: trailerFileName, withExtension: "mp4")
    }
    
    // 電影網站URL，透過連結名稱獲取，如果URL格式不正確，則返回nil。
    /// 網站網址連結
    var websiteURL: URL? {
        return URL(string: websiteUrlName)
    }

}
