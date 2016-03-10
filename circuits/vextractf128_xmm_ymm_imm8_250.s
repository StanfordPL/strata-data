  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovdqu %xmm1, %xmm15       #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vorpd %xmm1, %xmm15, %xmm1  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq               
                                                                          
.size target, .-target
