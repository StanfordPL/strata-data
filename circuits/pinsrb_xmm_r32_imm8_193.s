  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  orb %bh, %bh                        #  1     0     2      OPC=orb_rh_rh        
  cmc                                 #  2     0x2   1      OPC=cmc              
  callq .move_byte_15_of_ymm1_to_r8b  #  3     0x3   5      OPC=callq_label      
  cmovbew %bx, %r8w                   #  4     0x8   5      OPC=cmovbew_r16_r16  
  callq .move_r8b_to_byte_1_of_ymm1   #  5     0xd   5      OPC=callq_label      
  retq                                #  6     0x12  1      OPC=retq             
                                                                                 
.size target, .-target
