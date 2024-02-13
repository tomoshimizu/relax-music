import Foundation

class SleepViewModel {
    
    var musicList: [Music] = [
        Music(title: "まどろみの調べ",
              imageURL: "https://images.unsplash.com/photo-1532178968013-0acd8e5bf7c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
              soundFileName: "sleep1"),
        Music(title: "あたたかな木漏れ日",
              imageURL: "https://images.unsplash.com/photo-1553579857-74fb7643a502?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2090&q=80",
              soundFileName: "sleep2"),
        Music(title: "波の戯れ",
              imageURL: "https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
              soundFileName: "sleep3"),
        Music(title: "穏やかな夢",
              imageURL: "https://images.unsplash.com/photo-1508402476522-c77c2fa4479d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "sleep4"),
        Music(title: "木霊のささやき",
              imageURL: "https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
              soundFileName: "sleep5"),
        Music(title: "希望の花",
              imageURL: "https://images.unsplash.com/photo-1487139975590-b4f1dce9b035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
              soundFileName: "sleep6"),
        Music(title: "煌く星屑",
              imageURL: "https://images.unsplash.com/photo-1468276311594-df7cb65d8df6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "sleep7"),
        Music(title: "淡い雨音",
              imageURL: "https://images.unsplash.com/photo-1525939864518-b53937989bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80g",
              soundFileName: "sleep8"),
        Music(title: "静寂の月光",
              imageURL: "https://images.unsplash.com/photo-1511553677255-ba939e5537e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1082&q=80",
              soundFileName: "sleep9"),
        Music(title: "深海のゆらぎ",
              imageURL: "https://images.unsplash.com/photo-1506656680297-07a6e8be48eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
              soundFileName: "sleep10"),
        Music(title: "ゆれるオーロラ",
              imageURL: "https://images.unsplash.com/photo-1509111760872-88f5becad074?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
              soundFileName: "sleep11"),
        Music(title: "風仰ぐ夜",
              imageURL: "https://images.unsplash.com/photo-1519165678289-8dec49bc74f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1494&q=80",
              soundFileName: "sleep12"),
    ]
    
    func soundFileName(forIndex index: Int) -> String {
        return musicList[index].soundFileName
    }
}
