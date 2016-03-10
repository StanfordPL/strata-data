  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  unpckhps %xmm2, %xmm2           #  1     0    3      OPC=unpckhps_xmm_xmm       
  vmovaps %ymm3, %ymm1            #  2     0x3  4      OPC=vmovaps_ymm_ymm        
  vmovshdup %ymm2, %ymm12         #  3     0x7  4      OPC=vmovshdup_ymm_ymm      
  vunpckhpd %ymm1, %ymm12, %ymm1  #  4     0xb  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  5     0xf  1      OPC=retq                   
                                                                                  
.size target, .-target
