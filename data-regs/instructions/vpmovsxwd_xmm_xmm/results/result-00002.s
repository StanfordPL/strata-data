  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vhsubps %xmm2, %xmm2, %xmm1  #  1     0    4      OPC=vhsubps_xmm_xmm_xmm  
  movq %xmm2, %xmm4            #  2     0x4  4      OPC=movq_xmm_xmm         
  pmovsxwd %xmm4, %xmm1        #  3     0x8  5      OPC=pmovsxwd_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
