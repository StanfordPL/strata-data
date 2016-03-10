  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %xmm1, %xmm0          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpxor %xmm2, %xmm2, %xmm3       #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm       
  vpunpckhdq %ymm3, %ymm0, %ymm1  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movd %xmm1, %ebx                #  4     0xc   4      OPC=movd_r32_xmm            
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
