import Fluent
import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "Eduard Shahnazaryan's Server"
    }
    
    // Basic "Hello, world!" example
    router.get("hello", String.parameter) { req -> String in
        let name = try req.parameters.next(String.self)
        return "Hello, \(name)!"
    }
    
    // API Credentials
    router.get("api") { req -> String in
        return """
[
    { "name": "Քոչարի" }, { "name": "Լորկե" }, { "name": "Ուզունդարա" }, { "name": "Ֆնջան" }, { "name": "Գորանի" }, { "name": "Լուտկի" }, { "name": "Քերծի" }, { "name": "Էնզելի" }, { "name": "Վերվերի" }, { "name": "Թարս Պար" }, { "name": "Ռոստամ Բազի" }, { "name": "Բերդ" }, { "name": "Սասնա Քոչարի" }, { "name": "Յարխուշտա" }
]
"""

    }
    
    router.get("api", "acronyms") { req -> Future<[Acronym]> in
        return Acronym.query(on: req).all()
    }
    
    let acronymsController = AcronymsController()
    try router.register(collection: acronymsController)
    
    let usersController = UsersController()
    try router.register(collection: usersController)
    
    let categoriesController = CategoriesController()
    try router.register(collection: categoriesController)
}
