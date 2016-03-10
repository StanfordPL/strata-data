  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vmovupd %xmm2, %xmm14              #  2     0x5   4      OPC=vmovupd_xmm_xmm         
  unpcklps %xmm14, %xmm8             #  3     0x9   4      OPC=unpcklps_xmm_xmm        
  vpunpckldq %xmm8, %xmm14, %xmm9    #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movshdup %xmm1, %xmm1              #  5     0x12  4      OPC=movshdup_xmm_xmm        
  punpckhqdq %xmm9, %xmm1            #  6     0x16  5      OPC=punpckhqdq_xmm_xmm      
  retq                               #  7     0x1b  1      OPC=retq                    
                                                                                       
.size target, .-target
