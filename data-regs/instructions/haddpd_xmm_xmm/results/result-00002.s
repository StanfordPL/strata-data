  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vhaddpd %xmm2, %xmm1, %xmm10  #  1     0    4      OPC=vhaddpd_xmm_xmm_xmm  
  vminps %xmm10, %xmm10, %xmm9  #  2     0x4  5      OPC=vminps_xmm_xmm_xmm   
  movups %xmm9, %xmm1           #  3     0x9  4      OPC=movups_xmm_xmm       
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
