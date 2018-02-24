all: SaveSermon.class

SaveSermon.class: SaveSermon.java SermonTools.class
	javac SaveSermon.java

SermonTools.class:
	javac SermonTools.java
