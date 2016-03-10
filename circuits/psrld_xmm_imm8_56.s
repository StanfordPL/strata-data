  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpxor %xmm9, %xmm9, %xmm12  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  sqrtpd %xmm12, %xmm1        #  2     0x5  5      OPC=sqrtpd_xmm_xmm     
  retq                        #  3     0xa  1      OPC=retq               
                                                                          
.size target, .-target
