import Fluent
import Vapor

// Register your application's routes here.
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
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Քոչարի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Քոչարի:",
        "danceMedia": "https://www.youtube.com/watch?v=j4H_yFmXDq8",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Լորկե",
        "danceDescription": " Հայկական լեռնաշխարհում ...Լորկե:",
        "danceMedia": "https://www.youtube.com/watch?v=RRNWt9CZ2AQ",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Ուզունդարա",
        "danceDescription": " Հայկական լեռնաշխարհում ...Ուզունդարա:",
        "danceMedia": "https://www.youtube.com/watch?v=H9iB411e4IM",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Ֆնջան",
        "danceDescription": " Հայկական լեռնաշխարհում ...Ֆնջան:",
        "danceMedia": "https://www.youtube.com/watch?v=USNOdLpIrGE",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Գորանի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Գորանի:",
        "danceMedia": "https://www.youtube.com/watch?v=Jr5TaaAGjqE",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Լուտկի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Լուտկի:",
        "danceMedia": "https://www.youtube.com/watch?v=odobX8YDdg4",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Քերծի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Քերծի:",
        "danceMedia": "https://www.youtube.com/watch?v=IVxev9VEczA&list=RDIVxev9VEczA&start_radio=1",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Էնզելի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Էնզելի:",
        "danceMedia": "https://www.youtube.com/watch?v=_rNePMLRW40",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Վերվերի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Վերվերի:",
        "danceMedia": "https://www.youtube.com/watch?v=NOfqDxbS_SY",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Թարս Պար",
        "danceDescription": " Հայկական լեռնաշխարհում ...Թարս Պար:",
        "danceMedia": "https://www.youtube.com/watch?v=9_9ZEMcjOkI",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Ռոստամ Բազի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Ռոստամ Բազի:",
        "danceMedia": "https://www.youtube.com/watch?v=lkF5pojanK4",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Բերդ",
        "danceDescription": " Հայկական լեռնաշխարհում ...Բերդ:",
        "danceMedia": "https://www.youtube.com/watch?v=mHzW31OR3N4",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Սասնա Քոչարի",
        "danceDescription": " Հայկական լեռնաշխարհում ...Սասնա Քոչարի:",
        "danceMedia": "https://www.youtube.com/watch?v=IUsfPXvc0Do",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    },
    {
        "danceImage": "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
        "danceCourseName":
            [
                "1-ին Քայլ",
                "2-րդ Քայլ",
                "3-րդ Քայլ",
                "4-րդ Քայլ",
                "5-րդ Քայլ",
                "6-րդ Քայլ",
                "7-րդ Քայլ"
            ],
        "danceCourseDescription":
            [
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Ձախ ոտքը կատարում է կցորդ քայլ (ձախ ոտքը միացվում է աջին)",
                "● Աջ ոտքը դրվում է դեպի աջ",
                "● Խաղում է ձախ ոտքը",
                "● Ձախ ոտքը դրվում է դեպի ձախ",
                "● Աջ ոտքը կատարում է կցորդ քայլ",
                "● Ձախ ոտքը դրվում է դեպի ձախ"
            ],
        "detailDanceImage":
            [
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg",
                "http://hayernaysor.am/wp-content/uploads/2018/03/1394082.jpg"
            ],
        "danceName": "Յարխուշտա",
        "danceDescription": " Հայկական լեռնաշխարհում ...Յարխուշտա:",
        "danceMedia": "https://www.youtube.com/watch?v=E5hbGALpndo",
        "danceMediaBySteps":
            [
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8",
                "https://www.youtube.com/watch?v=j4H_yFmXDq8"
            ]
    }
]
"""
    }
    
    router.get("armcult", "api") { req -> String in
        return """
[
    {
        "p_id": "4107",
        "p_name": "Աբաս Իսահակյան",
        "p_role": "Բանասեր",
        "p_text": "16 հուլիս, 1900 - 6 հունվար, 1977\r\nԾնվել է ՀՀ Ղազարապատ (այժմ՝ ՀՀ Շիրակի մարզի Իսահակյան) գյուղում: Եղել է բանաստեղծ, արձակագիր Ավետիք Իսահակյանի եղբորորդին: 1918թ. և 1920թ. կռվել է Շիրակ ներխուժած թուրքերի դեմ: Ավարտել է Ալեքսանդրապոլի (այժմ՝ Գյումրի) ռուսական միջնակարգ առևտրական դպրոցը, 1926թ.՝ Երևանի պետական համալսարանը: Տպագրության է պատրաստել Ավետիք Իսահակյանի մի քանի ժողովածուներ, Իսահակ Իսահակյանի «Հեքիաթ արևի տակ» ժողովածուի 1974թ. հրատարակությունը: Մասնակցել է Երևանում Ա.Իսահակյանի տուն-թանգարանի ստեղծմանը: Հայերեն և ռուսերեն հրատարակել է «Ավետիք Իսահակյանի մասին» (1971թ.) ժողովածուն, Ա.Իսահակյանի «Մեր գրի անմահ փառքը» (Հ.Թումանյանի մասին, 1969թ.) տպագիր և անտիպ հոդվածների, ասույթների գիրքը: 1959թ. տողացի ռուսերենի է վերածել «Աբու-Լալա-Մահարի» պոեմը և մի շարք այլ երկեր, որոնք այնուհետև թարգմանվել են աշխարհի շատ լեզուներով: Մահացել է Երևանում:",
        "general_image": "/imagedb/persons/4107/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "1978",
        "p_name": "Աբգար Ափինյան",
        "p_role": "Գրականագետ",
        "p_text": "Ծնվել է 1960թ. փետրվարի 5-ին, Կիրովականում (այժմ՝ Վանաձոր): Ավարտել է Երևանի պետական համալսարանի բանասիրական ֆակուլտետը, այնուհետև` համալսարանի ասպիրանտուրան: 1986թ. «Ստեփան Զորյանը  և ռուս  գրականությունը» թեմայով ատենախոսության համար ստացել է բանասիրական գիտությունների թեկնածուի գիտական աստիճան: 1987թ-ից դասավանդում է Երևանի պետական համալսարանում, 2003թ-ից` Երևանի Խ.Աբովյանի անվան պետական մանկավարժական համալսարանում (2007թ-ից՝ դոցենտ): 1994-96թթ եղել է Մայր Աթոռ Սբ. Էջմիածնի մամլո դիվանի պետը, Գարեգին Առաջին Վեհափառ Հայրապետի մամլո քարտուղարը, 1996-2001թթ` Հայաստանի գրողների միության առաջին քարտուղարը, 1995-ից`  ՀԳՄ «Նոր-Դար» ամսագրի գլխավոր խմբագիրը, 2001թ-ից` խմբագրական խորհրդի նախագահը: 2011թ. ընտրվել է Երևանի գրողների միության նախագահ: 2005թ. մասնակցել է Կիևի «Տարաս Շևչենկո-Հովհաննես Թումանյան» միջազգային գիտաժողովին: 2005թ-ից Ստեփան Զորյանի գրական ժառանգության հանձնաժողովի նախագահն է, 2011թ-ից՝ «Մշակույթ» համահայկական հիմնադրամի գործադիր տնօրենը։ Գիտական աշխատանքներից են՝ «Ստեփան Զորյանը և ռուս գրականությունը» (1988թ.), «Համաշխարհային գրականություն» (Դասագիրք միջնակարգ դպրոցի 10-րդ դասարանի համար, երկրորդ մաս, համահեղինակ՝ Մ.Ասլանյանի, 1995թ.), «Գրականություն և ճակատագիր» (1996թ.), «Կարմիր լիալուսին, Վարդան Գրիգորյանի պատմավեպը» (1997թ.), «Սիրո տարածություն. Երեք էտյուդ Մարո Մարգարյանի մասին» (1999թ.), «Վլադիմիր Մայակովսկու մահն ու անմահությունը» (2002թ.), «18-19-րդ դդ ռուս գրականության պատմության ակնարկներ։ Գիրք Ա» (2007թ.), «19-րդ դարի ռուս գրականության պատմության ակնարկներ, գիրք Բ» (2007թ.), «20-րդ դարի ռուս գրականության պատմության ակնարկներ. գիրք Գ» (2007թ.), «Մշակութաբանություն. Մշակույթի տեսություն» (2008թ.), «Ստեփան Զորյան, Արձակի արվեստը» (2009թ.), «Արդի գրականություն» (2010թ.), «Մշակույթ և գրականություն» (2012թ.) գրքերը: Արժանացել է Գրականության և արվեստի ազգային ակադեմիայի ոսկե մեդալի:",
        "general_image": "/imagedb/persons/1978/main/1.jpg",
        "photos": [
            {
                "image_id": "5",
                "p_id": "1978",
                "lang": "am",
                "text": "[link http://avproduction.am/?ln=am&page=person&id=1846&name=%D5%8D%D5%A1%D6%80%D5%A3%D5%AB%D5%BD_%D4%BF%D5%A1%D6%80%D5%A5%D5%B5%D5%A1%D5%B6]Սարգիս Կարեյանի[link] հետ",
                "general": "/imagedb/persons/1978/5.jpg",
                "thumbs": "/imagedb/persons/1978/thumb/5.jpg"
            },
            {
                "image_id": "7",
                "p_id": "1978",
                "lang": "am",
                "text": "[link http://avproduction.am/?ln=am&page=person&id=955&name=%D5%8C%D5%A1%D5%A6%D5%B4%D5%AB%D5%AF_%D4%B4%D5%A1%D5%BE%D5%B8%D5%B5%D5%A1%D5%B6]Ռազմիկ Դավոյանի[link] հետ",
                "general": "/imagedb/persons/1978/7.jpg",
                "thumbs": "/imagedb/persons/1978/thumb/7.jpg"
            }
        ]
    },
    {
        "p_id": "5418",
        "p_name": "Աբգար Բալթազար",
        "p_role": "Գեղանկարիչ, արվեստաբան",
        "p_text": "26 փետրվար, 1880 - 26 սեպտեմբեր, 1909\r\nԾնվել է Բուխարեստում: Նախնական կրթությունն ստացել է ծննդավայրում։ Հետագայում սովորել է Բուխարեստի Մաթեյ Բասարապ լիցեյում։ Մասնագիտական կրթությունն ստացել է Բուխարեստի գեղարվեստների դպրոցում, ուր սովորել է 1896-1901թթ։ Ստեղծագործել է ընդամենը ութ տարի։ Նկարել է հիմնականում չքավոր խավի մարդկանց ու դրվագներ նրանց կյանքից, նաև բնանկարներ, դիմանկարներ։ Ռումին արվեստագետները նրա ստեղծագործություններում նկատել են հայկական մանրանկարչության շեշտված ազդեցություն։ 1907թ. ունեցել է անհատական երկու ցուցահանդես, որտեղ ցուցադրվել է 200 յուղաներկ, ջրաներկ, գրաֆիկական և մանրանկարչական գործեր։ Առավել նշանավոր գործերից են՝ «Քոլոմբա», «Արևի տակ», «Բազակայի վաճառականուհին», «Սերմնացանը», «Չերքեզուհին», «Բյուզանդական իշխանուհիներ», «Աշնանային տպավորություններ»։ Նրա որոշ գործեր պահվում են ռումինական պետական պատկերասրահում, Կլուժի արվեստի թանգարանում, Չամպաքչյանի, դոկտոր Սևերինյանոսի, Օփրեսկուի նաև այլ երկրների, ինչպես նաև Փարիզի դոկտոր Դիեոլաֆուայի հավաքածուներում։ Մահացել է Բուխարեստում։",
        "general_image": "/imagedb/persons/5418/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "5419",
        "p_name": "Աբգար Դանիելյան",
        "p_role": "Արձակագիր, լրագրող",
        "p_text": "15 մայիս, 1918 - 9 ապրիլ, 2002\r\nԾնվել է Արցախի Կոճողոտ գյուղում: 1939թ. Ստեփանակերտի բժշկական տեխնիկումում ուսմանը զուգահեռ աշխատել է «Երիտասարդ բոլշևիկ» թերթում: 1939թ. մասնակցել է Խորհրդաֆիննական, 1942-44թթ՝ Երկրորդ համաշխարհային պատերազմներին, վիրավորվել է: 1953թ. ավարտել է Բաքվի կուսակցական դպրոցը, 1964թ.՝ Հայկական պետական հեռակա մանկավարժական ինստիտուտի պատմության բաժինը: Հետագայում տեղափոխվել է Ստեփանակերտ և աշխատել «Սովետական Ղարաբաղ» թերթի խմբագրությունում, որտեղ 1946թ. եղել է նամակների բաժնի վարիչը, 1946-50թթ՝ գրական աշխատող, 1958-66թթ՝ կուսակցական կյանքի բաժնի վարիչը, 1966-76թթ՝ խմբագրի տեղակալը, 1979-91թթ՝ սեփական թղթակից, 1976-79թթ՝ ռադիոհաղորդումների մարզային կոմիտեի նախագահը: Խմբագրել է Մարտակերտի շրջանային «Սոցիալիզմի ուղիով» թերթը, որտեղ 1950-51թթ եղել է պատասխանատու խմբագիր, 1954-59թթ՝ կուսշրջկոմի երկրորդ քարտուղարը: Հեղինակել է բազմաթիվ պատմվածքներ, «Գոհար» վիպակը և «Այրող պատիվ» պիեսը, որը Ստեփանակերտի պետական թատրոնում բեմադրվել է 207 անգամ: Հեղինակել է նաև «Կյանքի համար» (1982թ., ռուսերեն), «Հարազատ օջախ» (1993թ., Ստեփանակերտի գյուղտեխնիկումի 70-ամյակի առթիվ) աշխատությունները: 1969թ-ից եղել է Արցախի ժուռնալիստների միության անդամ: Մահացել է Ստեփանակերտում:",
        "general_image": "/imagedb/persons/5419/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "3927",
        "p_name": "Աբգար Թոխաթեցի",
        "p_role": "Տպագրիչ, եկեղեցական, պետական գործիչ",
        "p_text": "1520 - 1572\r\nՍաֆար Աբգար, Աբգար Եվդոկացի, Աբգար Դպիր\r\nԾնվել է Թոխաթում (այժմ՝ Թուրքիայում): Հայրը եղել է Ամիրբեկը, մայրը՝ Եվան։ Ժամանակակիցներին ներկայացել է իբրև Արծրունյաց թագավորական տան շառավիղ։ 1562թ. Էջմիածնի Միքայել Սեբաստացի կաթողիկոսը, որ այդ ժամանակ ապաստանել էր հայրենի Սեբաստիայում, Աբգարի գլխավորությամբ պատգամավորություն ուղարկեց Հռոմ՝ Հայաստանի ազատագրության և դավանաբանական հարցերով։ Այդ առաքելությունը շոշափելի արդյունք չտվեց, բայց Աբգարի Իտալիայում գտնվելը կարևոր նշանակություն ունեցավ հայ տպագրության զարգացման համար։ Հռոմի Պիոս 4-րդ պապից և Վենետիկի Հերոնիմոս Դոժից հայերեն գրքեր տպագրելու իրավունք ստանալով՝ 1565թ. Վենետիկում տպագրել է «Խառնայ փնթուր տումարի» օրացույցը (մեկ էջի վրա) և Սաղմոսարան (վերջինս մինչև 1880-ական թվականները սխալմամբ համարվել է հայերեն առաջին տպագիր գիրքը, իսկ Աբրահամը առաջին հայ տպագրիչը)։ Այնուհետև տեղափոխվել է Կ.Պոլիս, որտեղ հիմնել է տպարան։ Այստեղ տպագրել է ևս 6 գիրք. 1567թ.՝ «Փոքր քերականութիւն», 1568թ.՝ «Պարզատումար», «Ժամագիրք» և «Պատարագամատոյց» (միասին), «Տօնացոյց», «Տաղարան», 1569թ.՝ «Մաշտոց»։ Ուսումնասիրությունը ցույց է տվել, որ նա տպագրությունն սկսել է ձեռքի տակ ունենալով հայ առաջին տպագրիչ Հակոբ Մեղապարտի գրքերը։ Պահպանվել է հայերի դավանանքի և ազգային սովորությունների մասին Պիոս 4-րդ պապի առաջարկով Աբգարի հեղինակած մի գրությունը (լատիներեն թարգմանությամբ)։",
        "general_image": "/imagedb/persons/3927/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "4252",
        "p_name": "Աբգար Հովհաննիսյան",
        "p_role": "Պատմաբան",
        "p_text": "30 մայիս, 1908 - 12 դեկտեմբեր, 1991\r\nԾնվել է Թիֆլիսում: 1928թ. ավարտել է Երևանի պետական համալսարանի պատմագրական ֆակուլտետը: 1938թ. ստացել է պատմական գիտռությունների դոկտորի գիտական աստիճան (1938թ-ից՝ պրոֆեսոր): 1931-60թթ մանկավարժական աշխատանք է կատարել Երևանի համալսարանում, որտեղ 1938թ-ից եղել է նոր պատմության ամբիոնի վարիչը, ապա գիտական գծով պրոռեկտորը: Դասավանդել է նաև ռուսական մանկավարժական ինստիտուտում: 1947թ-ից եղել է ՀՀ ԳԱ ակադեմիկոս, 1947-53թթ՝ ՀՀ ԳԱ պատմության ինստիտուտի տնօրենը, 1949-60թթ՝ հասարակական գիտությունների բաժանմունքի ակադեմիկոս-քարտուղար: 1960թ-ից վարել է ՀՀ ԳԱ փոխնախագահի պաշտոնը: Նրա գիտական ուսումնասիրությունները նվիրված են Ֆրանսիայի և հայ ժողովրդի պատմության նոր շրջանի խնդիրների լուսաբանմանը: Եվրոպական լեզուների իմացությունը, պատմագիտական լայնախոր պատրաստությունը հնարավորություն են տվել նրան ստեղծելու Ֆրանսիական մեծ հեղափոխության գաղափարախոսության, ուտոպիստ սոցիալիստների հասարակական-քաղաքական ուսմունքին նվիրված մեծարժեք մենագրություններ: Այդ աշխատությունները գրված են աղբյուրագիտական հարուստ նյութերի, այդ թվում Ֆրանսիայի տարբեր արխիվներից քաղված նորահայտ փաստաթղթերի հիման վրա: Նրա «Կոմունիստական գաղափարները Ֆրանսիական մեծ հեղափոխության տարիներին» ուսումնասիրությունը (1966թ., ռուսերեն) արժանացել է ԽՍՀՄ ԳԱ Վոլգինի անվան մրցանակի (1974թ.): Պատմաբանի գիտական աշխատությունների մյուս շարքը նվիրված է 18-րդ դարի 2-րդ կեսի և 19-րդ դարի 1-ին տասնամյակների հայ ազատագրական շարժումներին, հայ-ռուսական հարաբերությունների պատմությանը, Անդրկովկասն ու Արևելյան Հայաստանը Ռուսաստանի օգնությամբ ազատագրելու հարցում Անգլիայի ու Ֆրանսիայի՝ երկրամասի ժողովուրդների շահերին հակասող քաղաքականության և հարակից խնդիրների բացահայտմանը: Մասնակցել է հայ և այլ ժողովուրդների, համաշխարհային պատմության, Սովետական պատմական հանրագիտարանի բազմահատոր աշխատությունների ստեղծմանը, բազմիցս ներկայացրել սովետական պատմագիտությունը պատմաբանների միջազգային հավաքներում: Պարգևատրվել է Աշխատանքային կարմիր դրոշի, Հոկտեմբերյան հեղափոխության և «Պատվո նշան» շքանշաններով: 1940թ. արժանացել է Հայաստանի գիտության վաստակավոր գործչի կոչման: Մահացել է Երևանում:",
        "general_image": "/imagedb/persons/4252/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "4286",
        "p_name": "Աբգար Հովհաննիսյան",
        "p_role": "Հրապարակախոս, թարգմանիչ",
        "p_text": "14 մայիս, 1849 - 14 ապրիլ, 1904\r\nԾնվել է Թիֆլիսում: Ավարտել է Թիֆլիսի գիմնազիան և ընդունվել Պետերբուրգի իրավաբանական ֆակուլտետ: Մեկ տարի հետո մեկնել է Լայպցիգ և ուսումը շարունակել տեղի համալսարանի փիլիսոփայության ֆակուլտետի տնտեսագիտական բաժնում: Պետերբուրգում ուսումնասիրել է նաև գործնական ֆինանսագիտություն և հաշվապահություն: 1879թ-ից մինչև կյանքի վերջն աշխատել է Թիֆլիսի փոխադարձ վարկի ընկերության բանկում՝ որպես կառավարիչ: Եղել է փիլիսոփայական գիտությունների դոկտոր:1879-80թթ եղել է Թիֆլիսի հայկական թատրոնի տնօրենը, 1880-89թթ՝ իր իսկ ստեղծած «Թիֆլիսի հայերեն գրքերի հրատարակության ընկերության» նախագահը: 1876-81թթ լույս է ընծայել «Փորձ» հանդեսը, 1882-98թթ՝ «Արձագանք» պարբերաթերթը, որի էջերում տպագրել է ֆելիետոններ Մախլաս կեղծանունով: 1886թ. հայագետ Արթուր Լայստի գործակցությամբ հիմնադրել է «Armenische Bibliothek» մատենաշարը և 2 հատորով գերմաներեն հրատարակել հայ գրականության ընտիր նմուշները: Մասնակցել է Բեռլինի համալսարանի պրոֆեսոր Ֆրանց Ֆինկի «Հանդես հայագիտության» 8 ժողովածուների հրատարակությանը: Ֆրանսերենից ու գերմաներենից թարգմանել է պիեսներ, ինչպես նաև ֆրանսերեն է թարգմանել Րաֆֆու «Խաս փուշ» (1902թ.) և «Բիբի Շարաբանի» (1902թ.) վիպակները: Մահացել է Բաթումիում, թաղված է Թբիլիսիում:",
        "general_image": "/imagedb/persons/4286/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "849",
        "p_name": "Աբել Աբելյան",
        "p_role": "Դերասան",
        "p_text": "Ծնվել է 1978թ. սեպտեմբերի 29-ին, Երևանում: 1996-2001թթ սովորել է Երևանի թատրոնի և կինոյի պետական ինստիտուտի ռեժիսուրայի բաժնում, ապա` Թատերարվեստի ռուսական ակադեմիայի դերասանական բաժնում: 2001թ-ից աշխատել է Մոսկվայի «TV6» հեռուստաընկերությունում` որպես ռեժիսոր: 2003թ. «Շողակաթ» հեռուստաընկերությունում հեղինակել և վարել է «Հայտնի պատմություններ» հաղորդաշարը: 2005թ. «Հ2» հեռուստաալիքով վարել է «Սպոտ էքստրա» հաղորդաշարը: 2006թ. եղել է «Ար» հեռուստաընկերության «Փոքր քաղաքի մեծ մարդիկ» հաղորդման հեղինակը և ռեժիսորը, «Ծանոթանանք Երևան» հաղորդաշարի հաղորդավարն ու ռեժիսորը: Նկարահանվել է նաև մի քանի կինոնկարներում` «Խավարման օրը» (1999թ.), «Չգրված օրենք» (2002թ.), «Մոնարխ» (2005թ.), «Սրիկաները» (2006թ.), «Դիպուկահար» (2012թ.): 2007թ. հիմնադրել է «Քասթինգի դպրոց» հեռուստատեսության և ռադիոյի հաղորդավարների ուսումնական կենտրոնը, որի տնօրենն է: 2008թ-ից աշխատել է «Արմենիա» հեռուստաընկերությունում` որպես դերասան: Նկարահանվել է «Փախուստ» (2009թ.), «Կյանքի գինը» (2009թ.), «Վերադարձ» (2010թ.), «Ոստիկաններ» (2011թ.) և այլ հեռուստասերիալներում: 2011թ-ից հանդիսանում է «Առաջին պրոֆեսիոնալ դերասանական ստուդիա»-ի հիմնադիրը և տնօրենը: 2014թ. նկարահանվել է «Золотой глаз» հեռուստաֆիլմում: 2015թ. հանդես է եկել որպես «Ա-ԹԻՎԻ» հեռուստաընկերությամբ հեռարձակվող «Կյանքից առավել» հեռուստասերիալի և «Շարմ» ընկերության «Աննա Հեդվիգ Բյուլ - Վերջին աղոթքը» վավերագրական ֆիլմի պրոդյուսեր:",
        "general_image": "/imagedb/persons/849/main/10.jpg",
        "photos": [
            {
                "image_id": "16",
                "p_id": "849",
                "lang": "am",
                "text": "\"Կյանքի գինը\" հեռուստասերիալից (2009թ.)",
                "general": "/imagedb/persons/849/16.jpg",
                "thumbs": "/imagedb/persons/849/thumb/16.jpg"
            },
            {
                "image_id": "17",
                "p_id": "849",
                "lang": "am",
                "text": "\"Կյանքի գինը\" հեռուստասերիալից (2009թ.)",
                "general": "/imagedb/persons/849/17.jpg",
                "thumbs": "/imagedb/persons/849/thumb/17.jpg"
            }
        ]
    },
    {
        "p_id": "5422",
        "p_name": "Աբել Ապրեսյան",
        "p_role": "Լրագրող, հրատարակիչ",
        "p_text": "27 դեկտեմբեր, 1860 - 18 հունվար, 1931\r\nԾնվել է Շուշիում: Կրթությունն ստացել է Թավրիզի հայկական դպրոցում 1870-ական թվականների կեսերին՝ աշակերտելով վիպասան Րաֆֆուն։ Դպրոցն ավարտելուց հետո տեղափոխվել է Կովկաս, որպես առևտրական գործակալ աշխատել է Շուշիում։ Այդ թվականներից սկսել է աշխատակցել «Մշակ» պարբերականին։ 1881թ. Շուշիում տպագրել է Րաֆֆու «Խենթը» վեպը։ Երկար տարիներ աշխատակցել է արևելահայ մամուլին, իսկ 1890-ական թվականների սկզբներից թղթակցություններ է ուղարկել Կ.Պոլսում հրատարակվող Արփիար Արփիարյանի «Հայրենիք» թերթին։ 1910-12թթ Աստրախանում հրատարակել է «Մեր կյանքը» պարբերականը։ Օգտագործել է Ա.Ապ., Աբ.Ապ., Թղթակից, Բ.Մեռնեսյան և այլ ծածկանուններ։ Մահացել է Ռուսաստանի Աստրախան քաղաքում:",
        "general_image": "/imagedb/persons/5422/main/1.jpg",
        "photos": []
    },
    {
        "p_id": "4441",
        "p_name": "Աբել Մխիթարյան",
        "p_role": "Հայագետ, պատմաբան, եկեղեցական գործիչ",
        "p_text": "25 ապրիլ, 1804 - 22 սեպտեմբեր, 1873\r\nԾնվել է Վաղարշապատում (այժմ՝ Էջմիածին)։ Սովորել է տեղի Ժառանգավորաց վարժարանում, ապա դարձել Մայր աթոռի միաբանության անդամ, վարել հոգևոր ու կրթական պաշտոններ։ Եղել է Տրապիզոնի հոգևոր առաջնորդը, հիմնել «Թանգարան Հայկազյան» ընկերությունը։ Պաշւոոնավարել է նաև Կ.Պոլսում։ Աշխատակցել է «Կռունկ Հայոց աշխարհին», «Բանասեր», «Արարատ» և այլ պարբերականների։ Առանձին գրքերով հրատարակել է «Ճանապարհորդություն յԱնի» (1855թ.), «Պատմություն մենաստանին Հառիճո ի Շիրակ» (1856թ.), «Վեպ գաղթականության հայոց Տրապիզոնու» (1857թ.), «Անուշավան ի գերեվարս» (1860թ.), «Ճանապարհորդություն ի Դավրեժ» (1861թ.), «Հայոց ազգի քաղաքական վիճակը միջին դարերէն» (1862թ.), «Պատմութիւն ժողովոց Հայաստանեայց եկեղեցւոյ...» (1874թ.), «Վաղարշապատ քաղաքամայր Հայաստանի» (1874թ.), «Կաթուղիկէ Մայր եկեղեցի Վաղարշապատայ...» (1875) և այլ գործեր։ Մահացել է Վաղարշապատում (այժմ՝ Էջմիածին):",
        "general_image": "/imagedb/persons/4441/main/1.jpg",
        "photos": []
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
