  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vmaxps %xmm2, %xmm2, %xmm12    #  1     0     4      OPC=vmaxps_xmm_xmm_xmm   
  vhsubpd %xmm12, %xmm1, %xmm14  #  2     0x4   5      OPC=vhsubpd_xmm_xmm_xmm  
  movaps %xmm14, %xmm1           #  3     0x9   4      OPC=movaps_xmm_xmm       
  minps %xmm14, %xmm1            #  4     0xd   4      OPC=minps_xmm_xmm        
  retq                           #  5     0x11  1      OPC=retq                 
                                                                                
.size target, .-target
