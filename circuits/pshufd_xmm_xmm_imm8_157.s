  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm10_xmm11             #  1     0     5      OPC=callq_label          
  vmovshdup %xmm10, %xmm10                        #  2     0x5   5      OPC=vmovshdup_xmm_xmm    
  vhaddpd %ymm10, %ymm10, %ymm10                  #  3     0xa   5      OPC=vhaddpd_ymm_ymm_ymm  
  vmovdqa %xmm10, %xmm8                           #  4     0xf   5      OPC=vmovdqa_xmm_xmm      
  movshdup %xmm11, %xmm9                          #  5     0x14  5      OPC=movshdup_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label          
  retq                                            #  7     0x1e  1      OPC=retq                 
                                                                                                 
.size target, .-target
