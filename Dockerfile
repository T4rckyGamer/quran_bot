FROM T4rckyGamer/quran_bot:slim-buster

#clonning repo 
RUN git clone https://github.com/T4rckyGamer/quran_bot.git /root/quran_bot
#working directory 
WORKDIR /root/quran_bot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","quran_bot"]
