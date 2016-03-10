  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  popcntl %ebx, %r8d                 #  1     0     5      OPC=popcntl_r32_r32  
  xchgb %r8b, %bl                    #  2     0x5   3      OPC=xchgb_r8_r8      
  cmovpw %r8w, %r8w                  #  3     0x8   5      OPC=cmovpw_r16_r16   
  callq .move_r8b_to_byte_2_of_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                               #  5     0x12  1      OPC=retq             
                                                                                
.size target, .-target
