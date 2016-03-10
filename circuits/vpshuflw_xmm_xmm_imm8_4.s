  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpbroadcastw %xmm2, %xmm4       #  1     0    5      OPC=vpbroadcastw_xmm_xmm    
  vpunpckldq %xmm4, %xmm2, %xmm1  #  2     0x5  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm1, %xmm2, %xmm1      #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
