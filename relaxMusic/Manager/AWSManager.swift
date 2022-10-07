//
//  AWSManager.swift
//  relaxMusic
//

import Foundation
import AWSCore
import AWSCognito
import AWSS3

/// ToDo: シングルトン
class AWSManager {
    
    static func downloadImage(photoKey: String) {
        /// 構成設定
        let credentialsProvider = AWSCognitoCredentialsProvider(regionType:.APNortheast1,
           identityPoolId:"ap-northeast-1:38d4e020-b078-41a6-9c5f-7d9fc533a5ea")
        let configuration = AWSServiceConfiguration(region:.APNortheast1, credentialsProvider:credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        let s3bucket = "ios-relax-music"
        let expression = AWSS3TransferUtilityDownloadExpression()
        
        /// Realmから画像を取得（キャッシュ）
        /// ない場合はS3から画像をダウンロード
        /// S3から画像をダウンロード
        let transferUtility = AWSS3TransferUtility.default()
        transferUtility.downloadData(fromBucket: s3bucket, key: photoKey, expression: expression) { (task, URL, data, error) in
            if let data = data {
                /// ToDo: ダウンロードした画像を配列で返す
            }
        }
    }
}


