  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  pmovzxwq %xmm2, %xmm3                           #  1     0     5      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vpsubq %xmm8, %xmm2, %xmm4                      #  3     0xa   5      OPC=vpsubq_xmm_xmm_xmm  
  movzwl %bx, %r13d                               #  4     0xf   4      OPC=movzwl_r32_r16      
  vmovd %r13d, %xmm10                             #  5     0x13  5      OPC=vmovd_xmm_r32       
  vpor %ymm10, %ymm4, %ymm1                       #  6     0x18  5      OPC=vpor_ymm_ymm_ymm    
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
