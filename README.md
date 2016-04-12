# Qor-Example-iOS-Wrapper
iOS Shell for qor example web app

## Usage

```sh
# Prepare ENV, from qor/qor-example
# Get example app
$ go get -u github.com/qor/qor-example

# Setup database
$ mysql -uroot -p
mysql> CREATE DATABASE qor_example;

# Run Server
$ cd $GOPATH/src/github.com/qor/qor-example
$ go run db/seeds/main.go
$ go run main.go

cd to your workspace
git clone git@github.com:theplant/Qor-Example-iOS-Wrapper.git

# Install GYP meta building system if haven't
brew tap mgamer/homebrew-taps
brew install gyp

# Generate Applications
go run generate.go

# before run iOS demo, ensure you have Xcode command line tools installed
xcode-select --install
# Run iOS, you may need to wait about 2 minutes for compiling and installing the app
./runSimulator.sh
```

## License

Released under the [MIT License](http://opensource.org/licenses/MIT).
