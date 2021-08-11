import 'package:elecon/data/model/floor/floor.dart';
import 'package:elecon/presentation/hook/use_media_query.dart';
import 'package:elecon/presentation/hook/use_theme.dart';
import 'package:elecon/foundation/extension/iterable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FloorDataTable extends HookWidget {
  FloorDataTable({
    required this.topFloor,
    required this.datas,
  });
  final int topFloor;
  final List<Floor> datas;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final media = useMediaQuery();

    // データ列
    DataRow _dataRow(int floor, int congestion) {
      String congestionLabel;
      Color rowColor;
      switch (congestion) {
        case 1:
          congestionLabel = '1人〜2人';
          rowColor = theme.appColors.stateLow;
          break;
        case 2:
          congestionLabel = '3人〜5人';
          rowColor = theme.appColors.stateMiddle;
          break;
        case 3:
          congestionLabel = '6人以上';
          rowColor = theme.appColors.stateHigh;
          break;
        default:
          congestionLabel = '0人';
          rowColor = Colors.white;
      }

      return DataRow(
        color: MaterialStateColor.resolveWith(
          (states) => rowColor,
        ),
        cells: [
          DataCell(
            Text(
              '${floor}F',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          DataCell(
            Text(
              congestionLabel,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
    }

    final _rows = List.generate(topFloor, (i) => i + 1).reversed.map((i) {
      final data = datas.firstWhereOrNull((v) => v.floor == i);
      final congestion = data?.congestion ?? 0;
      return _dataRow(i, congestion);
    }).toList();

    final _headingRowHeight = 50.0;
    final _rowHeight = (media.size.height - _headingRowHeight) / _rows.length;

    return DataTable(
      headingRowHeight: _headingRowHeight,
      dataRowHeight: _rowHeight,
      columnSpacing: 5.0,
      headingRowColor: MaterialStateColor.resolveWith(
        (states) => theme.appColors.inactive,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.appColors.inactive,
        ),
      ),
      columns: const [
        DataColumn(
          label: Text(
            '階',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            '人数',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
      rows: _rows,
    );
  }
}
