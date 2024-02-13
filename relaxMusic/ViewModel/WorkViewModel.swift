import Foundation

class WorkViewModel {
    
    var musicList: [Music] = [
        Music(scene: .work,
              title: "まどろみの調べ",
              imageURL: "https://images.unsplash.com/photo-1574235515775-63974d22ccd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1382&q=80",
              soundFileName: "work1"),
        Music(scene: .work,
              title: "あたたかな木漏れ日",
              imageURL: "https://images.unsplash.com/photo-1590204376860-e26ae519fbf3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
              soundFileName: "work2"),
        Music(scene: .work,
              title: "波の戯れ",
              imageURL: "https://images.unsplash.com/photo-1518837695005-2083093ee35b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "work3"),
        Music(scene: .work,
              title: "穏やかな夢",
              imageURL: "https://images.unsplash.com/photo-1442508748335-fde9c3f58fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1266&q=80",
              soundFileName: "work4"),
        Music(scene: .work,
              title: "木霊のささやき",
              imageURL: "https://images.unsplash.com/photo-1476673160081-cf065607f449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
              soundFileName: "work5"),
        Music(scene: .work,
              title: "希望の花",
              imageURL: "https://images.unsplash.com/photo-1428591345840-8f3d75d06246?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
              soundFileName: "work6"),
        Music(scene: .work,
              title: "煌く星屑",
              imageURL: "https://images.unsplash.com/photo-1517632298125-355d911c3a4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=939&q=80",
              soundFileName: "work7"),
        Music(scene: .work,
              title: "淡い雨音",
              imageURL: "https://images.unsplash.com/photo-1468476396571-4d6f2a427ee7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
              soundFileName: "work8"),
        Music(scene: .work,
              title: "静寂の月光",
              imageURL: "https://images.unsplash.com/photo-1506099914961-765be7a97019?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "work9"),
        Music(scene: .work,
              title: "深海のゆらぎ",
              imageURL: "https://images.unsplash.com/photo-1531604250646-2f0e818c4f06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80",
              soundFileName: "work10"),
        Music(scene: .work,
              title: "ゆれるオーロラ",
              imageURL: "https://images.unsplash.com/photo-1499539582-dd1509980931?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
              soundFileName: "work11"),
        Music(scene: .work,
              title: "風仰ぐ夜",
              imageURL: "https://images.unsplash.com/photo-1536426910260-61cb1e1df4d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "work12"),
    ]
    
    func soundFileName(forIndex index: Int) -> String {
        return musicList[index].soundFileName
    }
}
