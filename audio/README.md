# WAV2MP3

## Introduction

I've been using this script to convert my Desmentira project Master audio tracks to Mp3, when uploading to digital audio distribution (spotify, apple music, deezer, etc).

I'm quite happy with it, and as I tend to use different machines this might be cool to keep a note for myself.

```bash
#!/bin/bash

printf "🎸 Convert WAV to MP3\n\n"

if [[ -z "$1" ]]; then
  printf "👹 Oops! Failed wav to mp3 conversion missing the input wav file and output mp3 arguments.\n\n"

  exit 1
fi;

printf "Wav is path is %s\n" "$1"
printf "Mp3 is %s\n\n\n" "$2"

path_to_wav_file=$1
path_to_mp3_output=$2

ffmpeg -i "$path_to_wav_file" \
  -ab 320k \
  -ac 2 \
  -ar 44100 \
  -joint_stereo 0 \
  "$path_to_mp3_output"%                                                                                                                            
```

I've been storing custom scripts in:

```sh
/Users/punkbit/.scripts/<CATEGORY>/<NAME>
```


For example

```sh
/Users/punkbit/.scripts/audio/wav2mp3
```

Which my shell profile (.zshrc) PATH has it declared in:

```sh
export PATH=$PATH:$(find ~/.scripts -maxdepth 3 -type d | paste -sd ":" -)
```

Quite easy to use:

```sh
wav2mp3 <WAV-INPUT-PATH> <MP3-OUTPUT-PATH>
```

🎸 It's really `ffmpgeg` that is doing all the magic but hope this come useful for someone else!
