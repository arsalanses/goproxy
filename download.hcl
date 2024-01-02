downloadURL = ""

mode = "sync"

download "git.example.ir/*" {
    mode = "async_redirect"
}

download "golang.org/*" {
    mode = "async_redirect"
    downloadURL = "https://goproxy.cn"
}

download "google.golang.org/*" {
    mode = "async_redirect"
    downloadURL = "https://goproxy.cn"
}
