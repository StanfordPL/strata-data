  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                 
.target:                        #        0    0      OPC=<label>            
  vpxor %xmm11, %xmm11, %xmm13  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  cvtdq2pd %xmm13, %xmm15       #  2     0x5  5      OPC=cvtdq2pd_xmm_xmm   
  movq %xmm15, %xmm1            #  3     0xa  5      OPC=movq_xmm_xmm       
  retq                          #  4     0xf  1      OPC=retq               
                                                                            
.size target, .-target
