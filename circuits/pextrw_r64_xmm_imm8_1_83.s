  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm2               #  1     0     5      OPC=vpmovsxwd_ymm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label        
  pmovsxdq %xmm13, %xmm1               #  3     0xa   6      OPC=pmovsxdq_xmm_xmm   
  callq .move_128_064_xmm1_r10_r11     #  4     0x10  5      OPC=callq_label        
  movmskpd %xmm1, %ebx                 #  5     0x15  4      OPC=movmskpd_r32_xmm   
  cmpl %ebx, %ebx                      #  6     0x19  2      OPC=cmpl_r32_r32       
  cmovgq %r11, %rbx                    #  7     0x1b  4      OPC=cmovgq_r64_r64     
  movw %r11w, %bx                      #  8     0x1f  4      OPC=movw_r16_r16       
  retq                                 #  9     0x23  1      OPC=retq               
                                                                                    
.size target, .-target
