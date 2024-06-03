import 'package:flutter/material.dart';

enum TrimMode {
  Length,
  Line,
}

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLength;
  final int trimLines;
  final TrimMode trimMode;
  final TextStyle? style;
  final TextStyle? linkStyle;
  final TextStyle? moreStyle;
  final TextStyle? lessStyle;
  final String readMoreText;
  final String readLessText;

  const ReadMoreText({
    Key? key,
    required this.text,
    this.trimLength = 100,
    this.trimLines = 2,
    this.trimMode = TrimMode.Length,
    this.style,
    this.linkStyle,
    this.moreStyle,
    this.lessStyle,
    this.readMoreText = 'Read more',
    this.readLessText = 'Read less',
  }) : super(key: key);

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool _isExpanded = false;

  void _toggleReadMore() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayText = _isExpanded
        ? widget.text
        : widget.trimMode == TrimMode.Length
            ? (widget.text.length > widget.trimLength
                ? widget.text.substring(0, widget.trimLength) + '...'
                : widget.text)
            : widget.text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.trimMode == TrimMode.Line)
          LayoutBuilder(
            builder: (context, constraints) {
              final span = TextSpan(
                text: widget.text,
                style: widget.style,
              );
              final tp = TextPainter(
                text: span,
                maxLines: _isExpanded ? null : widget.trimLines,
                textDirection: TextDirection.ltr,
              )..layout(maxWidth: constraints.maxWidth);
              if (tp.didExceedMaxLines) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.text,
                      maxLines: _isExpanded ? null : widget.trimLines,
                      overflow: TextOverflow.ellipsis,
                      style: widget.style,
                    ),
                    InkWell(
                      onTap: _toggleReadMore,
                      child: Text(
                        _isExpanded ? widget.readLessText : widget.readMoreText,
                        style: _isExpanded
                            ? (widget.lessStyle ?? widget.linkStyle ?? const TextStyle(color: Colors.blue))
                            : (widget.moreStyle ?? widget.linkStyle ?? const TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ],
                );
              } else {
                return Text(widget.text, style: widget.style);
              }
            },
          )
        else
          Text(displayText, style: widget.style),
        if (widget.trimMode == TrimMode.Length && widget.text.length > widget.trimLength)
          InkWell(
            onTap: _toggleReadMore,
            child: Text(
              _isExpanded ? widget.readLessText : widget.readMoreText,
              style: _isExpanded
                  ? (widget.lessStyle ?? widget.linkStyle ?? const TextStyle(color: Colors.blue))
                  : (widget.moreStyle ?? widget.linkStyle ?? const TextStyle(color: Colors.blue)),
            ),
          ),
      ],
    );
  }
}
