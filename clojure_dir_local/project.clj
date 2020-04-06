(defproject clojure-repl "0.1.0"
  :description "clojure repl"
  :url "http://canftin.com"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [org.clojure/core.match "1.0.0"]]
  :repl-options {:init-ns clojure-repl.core}
  :java-13-source
  {:extra-deps
   {java-sources {:local/root "C:/Program Files/Java/jdk-13.0.2/lib/src.zip"}}}
  )
