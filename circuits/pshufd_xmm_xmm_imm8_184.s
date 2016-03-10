  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label             
  movsldup %xmm2, %xmm14                #  2     0x5   5      OPC=movsldup_xmm_xmm        
  vmovdqa %xmm14, %xmm14                #  3     0xa   5      OPC=vmovdqa_xmm_xmm         
  callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xf   5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm14, %xmm13     #  5     0x14  5      OPC=vpunpckldq_xmm_xmm_xmm  
  mulss %xmm3, %xmm13                   #  6     0x19  5      OPC=mulss_xmm_xmm           
  vpunpckhdq %ymm14, %ymm13, %ymm14     #  7     0x1e  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movdqu %xmm14, %xmm1                  #  8     0x23  5      OPC=movdqu_xmm_xmm          
  retq                                  #  9     0x28  1      OPC=retq                    
                                                                                          
.size target, .-target
