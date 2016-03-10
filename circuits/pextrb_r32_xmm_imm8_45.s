  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm11, %xmm7                      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vsqrtsd %xmm1, %xmm7, %xmm1                     #  3     0xa   4      OPC=vsqrtsd_xmm_xmm_xmm   
  xorl %ebx, %ebx                                 #  4     0xe   2      OPC=xorl_r32_r32          
  callq .move_byte_9_of_ymm1_to_r8b               #  5     0x10  5      OPC=callq_label           
  xaddb %r8b, %bl                                 #  6     0x15  4      OPC=xaddb_r8_r8           
  retq                                            #  7     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
