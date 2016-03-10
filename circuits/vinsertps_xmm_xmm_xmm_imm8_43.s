  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vhaddpd %xmm8, %xmm8, %xmm11                    #  2     0x5   5      OPC=vhaddpd_xmm_xmm_xmm  
  vpmovzxwq %xmm10, %ymm9                         #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm    
  movshdup %xmm9, %xmm14                          #  4     0xf   5      OPC=movshdup_xmm_xmm     
  vsqrtsd %xmm14, %xmm11, %xmm1                   #  5     0x14  5      OPC=vsqrtsd_xmm_xmm_xmm  
  retq                                            #  6     0x19  1      OPC=retq                 
                                                                                                 
.size target, .-target
