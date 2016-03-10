  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm12          #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vpbroadcastd %xmm12, %ymm1          #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  xorl %ebx, %ebx                     #  3     0xa   2      OPC=xorl_r32_r32          
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xc   5      OPC=callq_label           
  xaddb %bl, %r8b                     #  5     0x11  4      OPC=xaddb_r8_r8           
  retq                                #  6     0x15  1      OPC=retq                  
                                                                                      
.size target, .-target
