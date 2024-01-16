const base = {
    get() {
                return {
            url : "http://localhost:8080/springbootp0eo6/",
            name: "springbootp0eo6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootp0eo6/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "在线拍卖系统"
        } 
    }
}
export default base
