//
//  ContentView.swift
//  HelloGrid
//
//  Created by Willy Hsu on 2024/12/18.
//

import SwiftUI

struct Continent: Identifiable{
    var name: String
    var lang: [String]
    var id: String {
        name
    }
}
struct ContentView: View {
    let languagesByContinent = [
        "美洲": ["英文", "西班牙文", "葡萄牙文", "法語", "荷蘭語"],
        "亞洲": ["中文", "日文", "韓文", "阿拉伯文", "印地語"],
        "歐洲": ["英語", "法語", "德語", "西班牙語", "義大利語"],
        "非洲": ["阿拉伯語", "斯瓦希里語", "豪薩語", "阿馬哈語", "祖魯語"],
        "大洋洲": ["英語", "毛利語", "斐濟語", "薩摩亞語", "托雷斯海峽語"]]
    var body: some View {
        let continents = languagesByContinent.map {Continent(name: $0, lang: $1)}
            .sorted { item1, item2 in
                item1.name < item2.name
            }
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()

        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Grid {
            GridRow(alignment: .top){
                ForEach(continents) { item in
                    VStack{
                        Text(item.name)
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                        Color.gray.frame(height: 1)
                        ForEach(item.lang, id: \.self){ lang in
                            Text(lang)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
