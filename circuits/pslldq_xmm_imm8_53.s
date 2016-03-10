  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  andnps %xmm1, %xmm1         #  1     0    3      OPC=andnps_xmm_xmm      
  vsubsd %xmm1, %xmm1, %xmm2  #  2     0x3  4      OPC=vsubsd_xmm_xmm_xmm  
  andnps %xmm2, %xmm2         #  3     0x7  3      OPC=andnps_xmm_xmm      
  unpckhpd %xmm2, %xmm1       #  4     0xa  4      OPC=unpckhpd_xmm_xmm    
  retq                        #  5     0xe  1      OPC=retq                
                                                                           
.size target, .-target
