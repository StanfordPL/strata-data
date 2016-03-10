  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm3          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vunpcklps %xmm3, %xmm2, %xmm6   #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %ymm6, %ymm3, %ymm2  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovsd %xmm2, %xmm6, %xmm1      #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
