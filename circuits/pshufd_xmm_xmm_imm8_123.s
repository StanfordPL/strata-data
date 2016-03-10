  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm15                       #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vmovdqu %xmm15, %xmm14                        #  2     0x4   5      OPC=vmovdqu_xmm_xmm         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label             
  vaddsd %xmm7, %xmm2, %xmm13                   #  4     0xe   4      OPC=vaddsd_xmm_xmm_xmm      
  movdqa %xmm14, %xmm1                          #  5     0x12  5      OPC=movdqa_xmm_xmm          
  vpunpckhdq %xmm13, %xmm15, %xmm13             #  6     0x17  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %ymm15, %ymm13, %ymm11             #  7     0x1c  5      OPC=vpunpckldq_ymm_ymm_ymm  
  unpckhps %xmm11, %xmm1                        #  8     0x21  4      OPC=unpckhps_xmm_xmm        
  retq                                          #  9     0x25  1      OPC=retq                    
                                                                                                  
.size target, .-target
