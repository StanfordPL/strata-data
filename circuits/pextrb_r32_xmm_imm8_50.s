  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm1           #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_byte_22_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label           
  xorq %rbx, %rbx                     #  3     0xa   3      OPC=xorq_r64_r64          
  xaddb %r8b, %bl                     #  4     0xd   4      OPC=xaddb_r8_r8           
  retq                                #  5     0x11  1      OPC=retq                  
                                                                                      
.size target, .-target
