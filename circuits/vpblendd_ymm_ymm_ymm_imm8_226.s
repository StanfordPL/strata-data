  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm14          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm3, %ymm14, %ymm6  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  movapd %xmm2, %xmm3              #  3     0x8   4      OPC=movapd_xmm_xmm          
  vunpckhpd %ymm3, %ymm6, %ymm3    #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vorps %ymm3, %ymm3, %ymm1        #  5     0x10  4      OPC=vorps_ymm_ymm_ymm       
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
