  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm6       #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  movshdup %xmm2, %xmm1           #  2     0x5   4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm6, %xmm1, %xmm8  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm8, %xmm1         #  4     0xd   5      OPC=punpcklqdq_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
