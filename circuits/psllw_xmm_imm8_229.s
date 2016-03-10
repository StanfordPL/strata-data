  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  addsubps %xmm1, %xmm1        #  1     0    4      OPC=addsubps_xmm_xmm    
  vmaxss %xmm1, %xmm1, %xmm12  #  2     0x4  4      OPC=vmaxss_xmm_xmm_xmm  
  andnpd %xmm12, %xmm1         #  3     0x8  5      OPC=andnpd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
