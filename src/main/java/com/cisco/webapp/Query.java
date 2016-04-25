package com.cisco.webapp;

import java.io.File;
import java.lang.reflect.Method;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.file.Path;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;


@SuppressWarnings("unused")
public class Query {

	private String query="";

	public String getquery() {
		return query;
	}

	public void setquery(String query) {
		this.query = query;
	}

	@Override
	public String toString() {
		return "Query [query=" + query + "]";
	}
	
}