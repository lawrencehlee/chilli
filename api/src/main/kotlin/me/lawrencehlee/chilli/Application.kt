package me.lawrencehlee.chilli

import io.micronaut.runtime.Micronaut.*

fun main(args: Array<String>) {
    build()
        .args(*args)
        .packages("me.lawrencehlee.chilli")
        .start()
}
