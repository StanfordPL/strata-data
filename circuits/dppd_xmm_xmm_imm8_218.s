  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmulsd %xmm2, %xmm1, %xmm2  #  1     0    4      OPC=vmulsd_xmm_xmm_xmm  
  andnps %xmm1, %xmm1         #  2     0x4  3      OPC=andnps_xmm_xmm      
  vaddsd %xmm2, %xmm1, %xmm2  #  3     0x7  4      OPC=vaddsd_xmm_xmm_xmm  
  hsubpd %xmm2, %xmm1         #  4     0xb  4      OPC=hsubpd_xmm_xmm      
  retq                        #  5     0xf  1      OPC=retq                
                                                                           
.size target, .-target
