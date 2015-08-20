; Output xml file to export to
(setq output-file "mapyourwaste.xml")

; Interactive function to call for exporting
(defun export-to-xml ()
  (interactive)
  (with-temp-file output-file
    (nxml-mode)
    (insert (xmlgen xml-doc))
    (goto-char (point-min))
    (replace-regexp ">+<" ">\n<")
    (indent-region (point-min) (point-max))))

; The actual xml document in xmlgen compatible sexp format
(setq xml-doc
      '(layouts
	(layout :name "root"
		(row (button :type "voicerec" :icon "voice.png")
		     (button :type "picture" :icon "camera.png")
		     (button :type "textnote" :icon "text.png"))
		(row (button :type "tag" :label "Sewage line" :icon "sewage-line.png")
		     (button :type "tag" :label "Sewer manhole" :icon "sewer-manhole.png")
		     (button :type "tag" :label "Telecom manhole" :icon "telecom-manhole.png"))
		(row (button :type "tag" :label "Public toilet" :icon "public-toilet.png")
		     (button :type "tag" :label "Public toilet - gents" :icon "gents-toilet.png")
		     (button :type "tag" :label "Public toilet - ladies" :icon "ladies-toilet.png"))
		(row (button :type "tag" :label "Waste basket" :icon "waste-basket.png")
		     (button :type "tag" :label "Waste disposal" :icon "waste-disposal.png")))))
