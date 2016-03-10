  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  andnps %xmm1, %xmm1            #  1     0    3      OPC=andnps_xmm_xmm         
  vunpckhpd %xmm1, %xmm1, %xmm9  #  2     0x3  4      OPC=vunpckhpd_xmm_xmm_xmm  
  movhlps %xmm9, %xmm1           #  3     0x7  4      OPC=movhlps_xmm_xmm        
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
