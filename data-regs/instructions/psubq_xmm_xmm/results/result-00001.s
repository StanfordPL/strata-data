  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpsubq %xmm2, %xmm1, %xmm3  #  1     0     4      OPC=vpsubq_xmm_xmm_xmm  
  vpxor %xmm5, %xmm5, %xmm10  #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm   
  cvtdq2pd %xmm10, %xmm1      #  3     0x8   5      OPC=cvtdq2pd_xmm_xmm    
  por %xmm3, %xmm1            #  4     0xd   4      OPC=por_xmm_xmm         
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
