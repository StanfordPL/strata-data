  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddss %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vaddss_xmm_xmm_xmm  
  vmulpd %xmm0, %xmm1, %xmm5  #  2     0x4  4      OPC=vmulpd_xmm_xmm_xmm  
  mulpd %xmm0, %xmm1          #  3     0x8  4      OPC=mulpd_xmm_xmm       
  xorps %xmm5, %xmm1          #  4     0xc  3      OPC=xorps_xmm_xmm       
  retq                        #  5     0xf  1      OPC=retq                
                                                                           
.size target, .-target
