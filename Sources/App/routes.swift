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
