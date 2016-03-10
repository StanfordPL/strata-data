  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  cvtps2dq %xmm1, %xmm3         #  1     0     4      OPC=cvtps2dq_xmm_xmm    
  cvtps2pd %xmm3, %xmm13        #  2     0x4   4      OPC=cvtps2pd_xmm_xmm    
  vxorps %xmm13, %xmm13, %xmm7  #  3     0x8   5      OPC=vxorps_xmm_xmm_xmm  
  cvtdq2pd %xmm7, %xmm1         #  4     0xd   4      OPC=cvtdq2pd_xmm_xmm    
  minsd %xmm1, %xmm1            #  5     0x11  4      OPC=minsd_xmm_xmm       
  retq                          #  6     0x15  1      OPC=retq                
                                                                              
.size target, .-target
