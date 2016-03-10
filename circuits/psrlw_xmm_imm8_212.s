  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovapd %xmm1, %xmm12        #  1     0    4      OPC=vmovapd_xmm_xmm     
  vpandn %xmm1, %xmm12, %xmm4  #  2     0x4  4      OPC=vpandn_xmm_xmm_xmm  
  pmovzxwq %xmm4, %xmm1        #  3     0x8  5      OPC=pmovzxwq_xmm_xmm    
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
