  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                 
.target:                        #        0    0      OPC=<label>            
  vpxor %xmm11, %xmm11, %xmm12  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  hsubps %xmm12, %xmm1          #  2     0x5  5      OPC=hsubps_xmm_xmm     
  unpckhpd %xmm1, %xmm1         #  3     0xa  4      OPC=unpckhpd_xmm_xmm   
  retq                          #  4     0xe  1      OPC=retq               
                                                                            
.size target, .-target
