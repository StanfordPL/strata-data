  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  mulps %xmm2, %xmm1                              #  2     0x5   3      OPC=mulps_xmm_xmm      
  addsubps %xmm10, %xmm1                          #  3     0x8   5      OPC=addsubps_xmm_xmm   
  unpcklps %xmm1, %xmm1                           #  4     0xd   3      OPC=unpcklps_xmm_xmm   
  punpckhdq %xmm1, %xmm1                          #  5     0x10  4      OPC=punpckhdq_xmm_xmm  
  retq                                            #  6     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
