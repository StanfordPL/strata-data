  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  xorl %ebx, %ebx                    #  1     0     2      OPC=xorl_r32_r32          
  vbroadcastsd %xmm1, %ymm1          #  2     0x2   5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0x7   5      OPC=callq_label           
  xaddb %bl, %r8b                    #  4     0xc   4      OPC=xaddb_r8_r8           
  retq                               #  5     0x10  1      OPC=retq                  
                                                                                     
.size target, .-target
