  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm4, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  orps %xmm7, %xmm1                             #  3     0x9   3      OPC=orps_xmm_xmm            
  punpcklqdq %xmm3, %xmm1                       #  4     0xc   4      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  5     0x10  1      OPC=retq                    
                                                                                                  
.size target, .-target
