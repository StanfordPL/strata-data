  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movzbl %bl, %edx                    #  1     0     3      OPC=movzbl_r32_r8    
  xorb %ch, %ch                       #  2     0x3   2      OPC=xorb_rh_rh       
  callq .move_byte_10_of_ymm1_to_r9b  #  3     0x5   5      OPC=callq_label      
  cmovncl %edx, %r9d                  #  4     0xa   4      OPC=cmovncl_r32_r32  
  callq .move_r9b_to_byte_12_of_ymm1  #  5     0xe   5      OPC=callq_label      
  retq                                #  6     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
