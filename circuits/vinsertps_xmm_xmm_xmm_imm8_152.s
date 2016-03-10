  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  punpckhqdq %xmm2, %xmm3         #  1     0     4      OPC=punpckhqdq_xmm_xmm      
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label             
  movd %r9d, %xmm8                #  3     0x9   5      OPC=movd_xmm_r32            
  movdqu %xmm8, %xmm9             #  4     0xe   5      OPC=movdqu_xmm_xmm          
  vpunpckldq %xmm3, %xmm2, %xmm1  #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  movlhps %xmm9, %xmm1            #  6     0x17  4      OPC=movlhps_xmm_xmm         
  retq                            #  7     0x1b  1      OPC=retq                    
                                                                                    
.size target, .-target
