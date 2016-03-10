  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vxorps %xmm0, %xmm0, %xmm13                   #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  mulps %xmm2, %xmm1                            #  2     0x4   3      OPC=mulps_xmm_xmm       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x7   5      OPC=callq_label         
  movddup %xmm4, %xmm1                          #  4     0xc   4      OPC=movddup_xmm_xmm     
  unpcklpd %xmm1, %xmm13                        #  5     0x10  5      OPC=unpcklpd_xmm_xmm    
  haddps %xmm13, %xmm1                          #  6     0x15  5      OPC=haddps_xmm_xmm      
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
