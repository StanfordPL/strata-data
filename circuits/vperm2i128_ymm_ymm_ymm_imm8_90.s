  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminpd %ymm2, %ymm2, %ymm1  #  1     0    4      OPC=vminpd_ymm_ymm_ymm  
  cvtps2dq %xmm2, %xmm1       #  2     0x4  4      OPC=cvtps2dq_xmm_xmm    
  andnps %xmm1, %xmm1         #  3     0x8  3      OPC=andnps_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
