  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  movsd %xmm2, %xmm1                            #  1     0     4      OPC=movsd_xmm_xmm           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label             
  vpbroadcastd %xmm7, %xmm9                     #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm9, %xmm2, %xmm5                #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm5, %xmm1                       #  5     0x13  4      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
