package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

using StringTools;

class DemoState extends MusicBeatState
{	
	private var demoText:FlxText;
	var demoText2:FlxText;
	
	override function create()
	{
		
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0.18;
		//bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);
		
		demoText = new FlxText(0, FlxG.height / 2 - 72, 0, "More to come", 64);
		demoText.alignment = CENTER;
		demoText.setFormat("VCR OSD Mono", 64, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		demoText.screenCenter(X);
		add(demoText);
		
		demoText2 = new FlxText(0, demoText.y + 72, 0, "when i finish it, probably soon", 48);
		demoText2.alignment = CENTER;
		demoText2.setFormat("VCR OSD Mono", 48, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		demoText2.screenCenter(X);
		add(demoText2);
		
		super.create();
	}
	
	override function update(elapsed:Float)
	{
		if (controls.BACK)
		{
			FlxG.switchState(new StoryMenuState());
			FlxG.sound.playMusic(Paths.music('freakyMenu'), 0);
		}
		
		super.update(elapsed);
	}
}