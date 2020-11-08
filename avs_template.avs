#Template for creating AVS

#AVISource("complete-path-to-location.avi") e.g, "c:\temp\vid1.avi"
#AVISource - for AVI files

#DirectShowSource - for mp4s and others
#DirectShowSource(".\file.mp4")

#Trim(start_frame, end_frame).FadeIn(in_milliseconds).FadeOut(in_milliseconds)
#Trim(2600, 4000).FadeIn(50).FadeOut(60)
#simple trim command to edit down to just the range between frames 2600 and 4000, fading in for 50 ms and fading out for 60 ms

#Dissolve(Trim(0, 8100), Trim(9000, 9840), Trim(10100, 11000), Trim(12000, 13700), Trim(14500, 15570), Trim(15540, 15550), Trim(15720, 16600), Trim(17100, 18700), Trim(20000, 20960), Trim(21365, 23000), Trim(23800, 26000), Trim(26600, 45446), 40)
#Example of using nested Trim commands to create multiple cuts and dissolves in a large file

#vid1 = DirectShowSource(".\file.mp4")
#vid2 = AVISource(".\file.mp4")
#vid3 = DirectShowSource(".\file.mp4")
#AlignedSplice(vid1, vid2, vid3)
#Splicing together multiple videos

#ConvertToYV12()
#placed at end of some files, may not be needed for most
