  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  minss %xmm2, %xmm2              #  1     0     4      OPC=minss_xmm_xmm           
  xorpd %xmm6, %xmm6              #  2     0x4   4      OPC=xorpd_xmm_xmm           
  punpckldq %xmm6, %xmm3          #  3     0x8   4      OPC=punpckldq_xmm_xmm       
  vpunpckldq %xmm3, %xmm6, %xmm1  #  4     0xc   4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
