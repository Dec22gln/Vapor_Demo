import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    let fileMiddleware = FileMiddleware(
        publicDirectory: app.directory.publicDirectory
    )
    app.middleware.use(fileMiddleware)
    
    // register routes
    try routes(app)
    print(app.routes.all)
}
