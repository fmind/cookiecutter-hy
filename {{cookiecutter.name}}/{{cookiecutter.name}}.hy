#!/usr/bin/env hy

"Documentation of the script."

(import argparse)

(setv PARSER (argparse.ArgumentParser :description __doc__))
(PARSER.add_argument "input" :type (argparse.FileType "r"))

(defn reverse [s]
  "Documentation of the function."
  (cut s None None -1))

(defmain [&rest args]
  (setv args (cut args 1 None))
  (setv opts (PARSER.parse_args args))
  (-> opts.input .read reverse print))
