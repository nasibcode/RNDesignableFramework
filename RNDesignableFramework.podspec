Pod::Spec.new do |s|
          #1.
          s.name               = "RNDesignableFrameword"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'RNDesignableFrameword' framework"
          #4.
          s.homepage        = "http://www.yudiz.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Nasib Ali Ansari"
          #7.
          s.platform            = :ios, "9.0"
          #8.
          s.source              = { :git => "https://github.com/nrsoftwaresollution/RNDesignableFramework.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "RNDesignableFrameword", "RNDesignableFrameword/**/*.{h,m,swift}"
    end