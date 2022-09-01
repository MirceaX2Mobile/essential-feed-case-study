//
//  SceneDelegate.swift
//  EssentialApp
//
//  Created by Mircea Dragota on 03.06.2022.
//

import UIKit
import EssentialFeed
import EssentialFeediOS
import CoreData

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    private lazy var httpClient: HTTPClient = {
        URLSessionHTTPClient(session: URLSession(configuration: .ephemeral))
    }()
    
    private lazy var store: FeedStore & FeedImageDataStore = {
        try! CoreDataFeedStore(storeURL: NSPersistentContainer
            .defaultDirectoryURL()
            .appendingPathComponent("feed-store.sqlite"))
    }()
    
    private lazy var localFeedLoader: LocalFeedLoader = {
        LocalFeedLoader(store: store, currentDate: Date.init)
    }()
    
    convenience init(httpClient: HTTPClient, store: FeedStore & FeedImageDataStore) {
        self.init()
        self.httpClient = httpClient
        self.store = store
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        configureWindow()
    }
    
    func configureWindow() {
        guard let url = URL(string: "https://ile-api.essentialdeveloper.com/essential-feed/v1/feed") else {
            return
        }
        
        let remoteFeedLoader = RemoteFeedLoader(url: url, client: httpClient)
        let remoteImageLoader = RemoteFeedImageDataLoader(client: httpClient)
        let localImageLoader = LocalFeedImageDataLoader(store: store)
        
        let feedViewController = FeedUIComposer.feedComposerWith(
            feedLoader: FeedLoaderWithFallbackComposite(
                primary: FeedLoaderCacheDecorator(
                    decoratee: remoteFeedLoader,
                    cache: localFeedLoader),
                fallback: localFeedLoader),
            imageLoader: FeedImageDataLoaderWithFallbackComposite(
                primary: FeedImageDataLoaderCacheDecorator(
                    decoratee: remoteImageLoader,
                    cache: localImageLoader),
                fallback: localImageLoader)
        )
        
        window?.rootViewController = UINavigationController(rootViewController: feedViewController)
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        localFeedLoader.validateCache { _ in }
    }
}
