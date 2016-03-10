  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  vorpd %xmm1, %xmm2, %xmm7   #  1     0     4      OPC=vorpd_xmm_xmm_xmm  
  vpxor %xmm1, %xmm7, %xmm8   #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm  
  vorpd %xmm7, %xmm8, %xmm13  #  3     0x8   4      OPC=vorpd_xmm_xmm_xmm  
  pxor %xmm13, %xmm1          #  4     0xc   5      OPC=pxor_xmm_xmm       
  retq                        #  5     0x11  1      OPC=retq               
                                                                           
.size target, .-target
