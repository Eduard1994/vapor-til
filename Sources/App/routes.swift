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
    {
        "name": "Քոչարի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Լորկե",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Ուզունդարա",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Ֆնջան",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Գորանի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Լուտկի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Քերծի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Էնզելի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Վերվերի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Թարս Պար",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Ռոստամ Բազի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Բերդ",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Սասնա Քոչարի",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    },
    {
        "name": "Յարխուշտա",
        "image": "https://avatars.mds.yandex.net/get-pdb/1101614/9db29b75-df41-4190-93db-5ff05d325429/s1200?webp=false"
    }
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
