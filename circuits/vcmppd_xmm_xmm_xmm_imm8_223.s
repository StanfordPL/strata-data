  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vzeroall                                      #  1     0     3      OPC=vzeroall                 
  divps %xmm12, %xmm1                           #  2     0x3   4      OPC=divps_xmm_xmm            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x7   5      OPC=callq_label              
  pmovsxdq %xmm5, %xmm6                         #  4     0xc   5      OPC=pmovsxdq_xmm_xmm         
  vpmovsxdq %xmm6, %ymm12                       #  5     0x11  5      OPC=vpmovsxdq_ymm_xmm        
  vpunpckhqdq %xmm12, %xmm12, %xmm1             #  6     0x16  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                          #  7     0x1b  1      OPC=retq                     
                                                                                                   
.size target, .-target
