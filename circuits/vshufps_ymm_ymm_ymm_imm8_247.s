  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovdqa %ymm2, %ymm8              #  1     0     4      OPC=vmovdqa_ymm_ymm         
  vpunpckldq %ymm8, %ymm8, %ymm11   #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovshdup %ymm8, %ymm14           #  3     0x9   5      OPC=vmovshdup_ymm_ymm       
  sqrtsd %xmm3, %xmm11              #  4     0xe   5      OPC=sqrtsd_xmm_xmm          
  vmovshdup %ymm3, %ymm4            #  5     0x13  4      OPC=vmovshdup_ymm_ymm       
  vunpckhps %ymm11, %ymm14, %ymm12  #  6     0x17  5      OPC=vunpckhps_ymm_ymm_ymm   
  vunpckhpd %ymm4, %ymm12, %ymm1    #  7     0x1c  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                              #  8     0x20  1      OPC=retq                    
                                                                                      
.size target, .-target
