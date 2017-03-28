# EasyLayoutDemo

EasyLayout 是一个服务于iOS，基于Swift编写的布局框架。它定义了运算符，通过编写view之间的关系生成对应的NSLayoutConstraint对象，简化了NSLayoutConstraint对象的生成代码，它使得约束的显示方式和xib的约束显示很相似

EasyLayout通过扩展UIView和UIViewController添加API，通过编写UIView与UIView之间关系或者UIView与UIViewController的LayoutGuide之间的关系就可以生成对应的NSLayoutConstraint


代码示例

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view1: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.redColor()
            return view
        }()
        let view2: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.greenColor()
            return view
        }()
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints([
            view1.es.top .= self.view.es.top .+ 1,
            view1.es.centerX .= self.view.es.centerX,
            view1.es.height .= 50,
            view1.es.width .= self.view.es.width .* 0.5,
            
            view2.es.top .= view1.es.bottom .+ 50,
            view2.es.centerX .= view1.es.centerX,
            view2.es.height .= view1.es.height .* 2 .+ 50,
            view2.es.width .= 1000 .| 900,
            view2.es.width .<= view1.es.width .- 50,
            ])
    }
}
效果


![image](https://github.com/wangmuhuo/EasyLayoutDemo/blob/master/EasyLayoutDemo/demoRes/demo1.png) 


学习文章：http://blog.csdn.net/jejay/article/details/62056296


