test_that("german date",
{
    expect_identical(
        get_Date_from_German_format("13.02.25.txt"),
        as.Date("2025-02-13")
    )
})

test_that("test temp",
{
    news_list_13_02_25 <- list(
    "Zum Auftakt von Tag2 des NATO Treffens in Brüssel hat Generalsekretär Rutte Pete Hegseth empfangen. Die neue US-Verteidigungsminister bekräftigte, einen Frieden in der Ukraine müssten die Europäer selbst absichern. Bundesverteidigungsminister Pistorius stellte klar, Europa müsse bei den Verhandlungen mit an dem Tisch sitzen. Deutliche Kritik übte er an die USA. Es war bedauerlich, schon vorab öffentlich Zugeständnisse an Russland gemacht zu haben. ",
    "US-Präsident Trump will Russlands Staatschef Putin offenbar in Saudi-Arabien treffen, um über ein Ende des Kriegs in der Ukraine zu verhandeln. Das erklärte er am Abend in Washington. Zuvor hat er mit Putin telefoniert.",
    "Die Commerzbank will bis Ende 2027 rund 3900 Vollzeitstellen abbauen. Davon 3300 allein in Deutschland vor allem Frankfurt. Hintergrund, das Unternehmen will schlanker und effizienter werden, in Abwehrkampf gegen italienische Großbank Unikredit. Die strebt eine Übernahme der Commerzbank an.",
    "Bei der Bahn sind in vergangenen Jahr mehr Züge ausgefallen. Im Fernverkehr 4, in Regionalverkehr 5%. Ursachen seien vor allem Streiks, aber auch Marode Infrastruktur, sowie nicht ausreichende Wartung. Das teilte das Verkehrsministerium auf Anfrage von Politikern der Grünen und der FDP mit.",
    "In Südosten der Frankreich sind bei einer Explosion einer Granat in einem Bar mindestens 12 Menschen verletzt worden, 2 davon schwer. Ein Man hatte gut besuchte lokale Betreten ein Granat hineingeworfen und war danach geflüchtet. Sein Motiv ist noch unklar. Hinweise auf einen terroristischen Hintergrund gibt es bislang aber nicht."
    )
    read_format_13_02_25 <- list(
    "13.02.25.txt",        
    as.Date("2025-02-13"),
    news_list_13_02_25
    )
    expect_identical(
        1,1
    )
})