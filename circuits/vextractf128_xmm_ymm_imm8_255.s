  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  callq .move_byte_22_of_ymm1_to_r8b    #  2     0x5   5      OPC=callq_label               
  callq .move_r8b_to_byte_20_of_ymm1    #  3     0xa   5      OPC=callq_label               
  movshdup %xmm1, %xmm10                #  4     0xf   5      OPC=movshdup_xmm_xmm          
  movshdup %xmm10, %xmm3                #  5     0x14  5      OPC=movshdup_xmm_xmm          
  vfnmsub213ss %xmm3, %xmm12, %xmm1     #  6     0x19  5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1                  #  7     0x1e  5      OPC=movdqu_xmm_xmm            
  retq                                  #  8     0x23  1      OPC=retq                      
                                                                                            
.size target, .-target
