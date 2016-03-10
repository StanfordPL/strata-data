  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vxorps %xmm1, %xmm1, %xmm2    #  1     0    4      OPC=vxorps_xmm_xmm_xmm    
  vmovhlps %xmm2, %xmm2, %xmm0  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  pmovzxbd %xmm0, %xmm1         #  3     0x8  5      OPC=pmovzxbd_xmm_xmm      
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
