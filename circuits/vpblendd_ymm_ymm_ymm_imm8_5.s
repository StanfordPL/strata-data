  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  movdqa %xmm3, %xmm0                           #  2     0x5   4      OPC=movdqa_xmm_xmm              
  vpunpckhdq %xmm3, %xmm3, %xmm6                #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm      
  vfmaddsub213pd %xmm0, %xmm5, %xmm4            #  4     0xd   5      OPC=vfmaddsub213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  5     0x12  5      OPC=callq_label                 
  vmovdqa %ymm2, %ymm1                          #  6     0x17  4      OPC=vmovdqa_ymm_ymm             
  retq                                          #  7     0x1b  1      OPC=retq                        
                                                                                                      
.size target, .-target
