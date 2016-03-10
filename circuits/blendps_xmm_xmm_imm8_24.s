  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vminsd %xmm5, %xmm2, %xmm5                    #  2     0x5   4      OPC=vminsd_xmm_xmm_xmm      
  unpckhps %xmm6, %xmm5                         #  3     0x9   3      OPC=unpckhps_xmm_xmm        
  vpunpckhdq %xmm5, %xmm1, %xmm9                #  4     0xc   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm9, %xmm1                       #  5     0x10  5      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
