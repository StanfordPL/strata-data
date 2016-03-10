  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm2, %xmm2, %xmm12  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  movups %xmm12, %xmm4          #  2     0x4  4      OPC=movups_xmm_xmm       
  pmovzxwd %xmm4, %xmm1         #  3     0x8  5      OPC=pmovzxwd_xmm_xmm     
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
