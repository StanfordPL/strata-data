  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                    
.target:                          #        0    0      OPC=<label>               
  vxorps %xmm3, %xmm3, %xmm14     #  1     0    4      OPC=vxorps_xmm_xmm_xmm    
  vmovhlps %xmm14, %xmm14, %xmm7  #  2     0x4  5      OPC=vmovhlps_xmm_xmm_xmm  
  movapd %xmm7, %xmm1             #  3     0x9  4      OPC=movapd_xmm_xmm        
  retq                            #  4     0xd  1      OPC=retq                  
                                                                                 
.size target, .-target
