//trigger to change related contacts phone according to parent account's phone
trigger trg1 on Account(after update)
{
    if(trigger.isAfter && trigger.isUpdate)
    {
        practiceClass.trgController(trigger.newMap);
    }
}
