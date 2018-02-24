all: SaveSermon.class EndSermon.class

EndSermon: EndSermon.class
	java EndSermon

EndSermon.class: EndSermon.java SermonTools.class
	javac EndSermon.java

SaveSermon: SaveSermon.class
	java SaveSermon

SaveSermon.class: SaveSermon.java SermonTools.class
	javac SaveSermon.java

SermonTools.class: SermonTools.java
	javac SermonTools.java
