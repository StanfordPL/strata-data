  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm1, %ymm4                     #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckldq %xmm4, %xmm5, %xmm1                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r8b             #  4     0xe   5      OPC=callq_label             
  movzbq %r8b, %rbx                             #  5     0x13  4      OPC=movzbq_r64_r8           
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
