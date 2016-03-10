  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  pmovzxdq %xmm2, %xmm11        #  1     0     6      OPC=pmovzxdq_xmm_xmm    
  pmovzxdq %xmm1, %xmm15        #  2     0x6   6      OPC=pmovzxdq_xmm_xmm    
  movsldup %xmm11, %xmm4        #  3     0xc   5      OPC=movsldup_xmm_xmm    
  vxorps %xmm11, %xmm4, %xmm0   #  4     0x11  5      OPC=vxorps_xmm_xmm_xmm  
  vxorps %xmm0, %xmm15, %xmm14  #  5     0x16  4      OPC=vxorps_xmm_xmm_xmm  
  movaps %xmm14, %xmm1          #  6     0x1a  4      OPC=movaps_xmm_xmm      
  retq                          #  7     0x1e  1      OPC=retq                
                                                                              
.size target, .-target
