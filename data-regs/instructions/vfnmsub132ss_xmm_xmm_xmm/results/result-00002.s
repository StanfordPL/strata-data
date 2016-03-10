  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vandnpd %xmm2, %xmm2, %xmm14      #  1     0     4      OPC=vandnpd_xmm_xmm_xmm       
  vpor %ymm14, %ymm14, %ymm6        #  2     0x4   5      OPC=vpor_ymm_ymm_ymm          
  vfnmsub231ps %xmm3, %xmm6, %xmm3  #  3     0x9   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vfmsub132ss %xmm3, %xmm2, %xmm1   #  4     0xe   5      OPC=vfmsub132ss_xmm_xmm_xmm   
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
