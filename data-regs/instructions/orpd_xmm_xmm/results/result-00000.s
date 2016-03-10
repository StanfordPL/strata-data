  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovdqu %xmm1, %xmm4        #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vorpd %xmm2, %xmm4, %xmm13  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  orps %xmm13, %xmm1          #  3     0x8  4      OPC=orps_xmm_xmm       
  retq                        #  4     0xc  1      OPC=retq               
                                                                          
.size target, .-target
