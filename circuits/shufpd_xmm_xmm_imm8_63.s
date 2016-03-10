  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  pmovsxwd %xmm1, %xmm9       #  1     0    6      OPC=pmovsxwd_xmm_xmm    
  vmulss %xmm9, %xmm2, %xmm3  #  2     0x6  5      OPC=vmulss_xmm_xmm_xmm  
  punpckhqdq %xmm3, %xmm1     #  3     0xb  4      OPC=punpckhqdq_xmm_xmm  
  retq                        #  4     0xf  1      OPC=retq                
                                                                           
.size target, .-target
