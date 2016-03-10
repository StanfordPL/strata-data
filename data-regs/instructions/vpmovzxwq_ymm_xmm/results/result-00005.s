  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label         
  pmovzxwq %xmm5, %xmm1                           #  2     0x5   5      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label         
  vsubsd %xmm8, %xmm1, %xmm15                     #  4     0xf   5      OPC=vsubsd_xmm_xmm_xmm  
  vorps %xmm1, %xmm15, %xmm9                      #  5     0x14  4      OPC=vorps_xmm_xmm_xmm   
  pmovzxwq %xmm2, %xmm8                           #  6     0x18  6      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1              #  7     0x1e  5      OPC=callq_label         
  retq                                            #  8     0x23  1      OPC=retq                
                                                                                                
.size target, .-target
