  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movaps %xmm11, %xmm9                 #  2     0x5   4      OPC=movaps_xmm_xmm    
  movshdup %xmm9, %xmm11               #  3     0x9   5      OPC=movshdup_xmm_xmm  
  movd %xmm11, %ebx                    #  4     0xe   5      OPC=movd_r32_xmm      
  retq                                 #  5     0x13  1      OPC=retq              
                                                                                   
.size target, .-target
