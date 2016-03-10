  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movshdup %xmm1, %xmm11            #  1     0     5      OPC=movshdup_xmm_xmm        
  vpmovzxdq %xmm2, %ymm14           #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm       
  punpckhdq %xmm2, %xmm14           #  3     0xa   5      OPC=punpckhdq_xmm_xmm       
  vmovsd %xmm1, %xmm1, %xmm10       #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm      
  vpunpckhdq %xmm10, %xmm11, %xmm2  #  5     0x13  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %ymm14, %ymm2, %ymm5    #  6     0x18  5      OPC=vunpcklpd_ymm_ymm_ymm   
  movups %xmm5, %xmm1               #  7     0x1d  3      OPC=movups_xmm_xmm          
  retq                              #  8     0x20  1      OPC=retq                    
                                                                                      
.size target, .-target
