  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vfmsub231ss %xmm2, %xmm2, %xmm2  #  1     0     5      OPC=vfmsub231ss_xmm_xmm_xmm  
  vpmovsxdq %xmm2, %xmm14          #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm        
  vunpckhps %ymm2, %ymm14, %ymm10  #  3     0xa   4      OPC=vunpckhps_ymm_ymm_ymm    
  movapd %xmm10, %xmm1             #  4     0xe   5      OPC=movapd_xmm_xmm           
  movlhps %xmm10, %xmm1            #  5     0x13  4      OPC=movlhps_xmm_xmm          
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
