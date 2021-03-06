#tag Class
Protected Class GKTurnBasedParticipant
Inherits NSObject
	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  static ref as ptr = NSClassFromString("GKTurnBasedParticipant")
		  return ref
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function lastTurnDate_ lib GameKitLib selector "lastTurnDate" (obj_id as ptr) as ptr
			  Return new NSDate(lastTurnDate_(self))
			End Get
		#tag EndGetter
		lastTurnDate As NSDate
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function matchOutcome_ lib GameKitLib selector "matchOutcome" (obj_id as ptr) as GKTurnBasedMatchOutcome
			  Return (matchOutcome_(self))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub matchOutcome_ lib GameKitLib selector "setMatchOutcome:" (obj_id as ptr, matchOutcome as GKTurnBasedMatchOutcome)
			  matchOutcome_(self, value)
			End Set
		#tag EndSetter
		matchOutcome As GKTurnBasedMatchOutcome
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function player_ lib GameKitLib selector "player" (obj_id as ptr) as ptr
			  Return new GKPlayer(player_(self))
			End Get
		#tag EndGetter
		player As GKPlayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function status_ lib GameKitLib selector "status" (obj_id as ptr) as GKTurnBasedParticipantStatus
			  Return (status_(self))
			End Get
		#tag EndGetter
		status As GKTurnBasedParticipantStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function timeoutDate_ lib GameKitLib selector "timeoutDate" (obj_id as ptr) as ptr
			  Return new NSDate(timeoutDate_(self))
			End Get
		#tag EndGetter
		timeoutDate As NSDate
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
