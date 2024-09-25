/buildscript\s*\{/{
    f = 1
}
f && /repositories\s*\{/{
    print "  repositories {"
    print "    maven { url \'https://maven.aliyun.com/repository/public/\' }"
    print "    maven { url \'https://repo.maven.apache.org/maven2/\' }"
    print "    maven { url \'https://maven.aliyun.com/repository/gradle-plugin\' }"
    f = 0
    next
}
f{
    print
}
!f{
    print
}
