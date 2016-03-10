  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  setnbe %r10b        #  1     0     4      OPC=setnbe_r8        
  movsbl %r10b, %ebp  #  2     0x4   4      OPC=movsbl_r32_r8    
  popcntw %bp, %dx    #  3     0x8   5      OPC=popcntw_r16_r16  
  cmovbew %cx, %bx    #  4     0xd   4      OPC=cmovbew_r16_r16  
  retq                #  5     0x11  1      OPC=retq             
                                                                 
.size target, .-target
