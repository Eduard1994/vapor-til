import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "Eduard Shahnazaryan's Vapor Server"
    }
    
    // Basic "Hello, world!" example
    router.get("hello", String.parameter) { req -> String in
        let name = try req.parameters.next(String.self)
        return "Hello, \(name)!"
    }

    router.post("api", "acronyms") { req -> Future<Acronym> in
        
        return try req.content.decode(Acronym.self)
            .flatMap(to: Acronym.self) { acronym in
                
                return acronym.save(on: req)
            }
    }
    // Example of configuring a controller
    
}
