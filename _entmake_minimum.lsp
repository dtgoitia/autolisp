; Minimum elements necessary to create an object with (entmakex)

; LWPOLYLINE: lightweight polyline
(entmakex
  (append
    (list
      (cons   0 "LWPOLYLINE")         ; Object type
      (cons 100 "AcDbEntity")
      (cons 100 "AcDbPolyline")
      (cons  70 0)                  ; Open(0)/Closed(1)
      (cons  90 2)                  ; Number of vertices
    )
    (list
      (cons 10 p1)                  ; Vertex 1
      (cons 10 p2)                  ; Vertex 2
;      ...                          ; Vertex ...
;      (cons 10 pn)                 ; Vertex n
    )
  );END append
)

; INSERT
(entmakex
  (list
    (cons  0 "INSERT")
    (cons  2 blockName)           ; Block name
    (cons 10 insertionPoint)      ; Insertion point coordinates
  )
)
