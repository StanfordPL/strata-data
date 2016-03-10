  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  movd %ebx, %xmm11                  #  1     0     5      OPC=movd_xmm_r32            
  vbroadcastss %xmm11, %ymm9         #  2     0x5   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm1, %xmm9, %xmm3     #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  4     0xe   5      OPC=callq_label             
  punpcklqdq %xmm9, %xmm1            #  5     0x13  5      OPC=punpcklqdq_xmm_xmm      
  retq                               #  6     0x18  1      OPC=retq                    
                                                                                       
.size target, .-target
