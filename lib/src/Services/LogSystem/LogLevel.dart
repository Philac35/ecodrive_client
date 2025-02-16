enum LogLevel{
  all,
  verbose,
  trace,
  debug,
  info,
  warning,
  error,
  wtf,
  fatal,
  nothing,
  off
}

void main() {
  List<LogLevel> levels = LogLevel.values;
  print(levels); // Output: [LogLevel.all, MyLogLevel.verbose, ...]
}

