  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  cvtpd2dq %xmm8, %xmm0                           #  2     0x5   5      OPC=cvtpd2dq_xmm_xmm         
  vpmovzxwq %xmm10, %ymm8                         #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %xmm11, %xmm0, %xmm2                #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpckhpd %xmm8, %xmm2, %xmm2                   #  5     0x14  5      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_128_064_xmm2_r10_r11                #  6     0x19  5      OPC=callq_label              
  movslq %r11d, %rbx                              #  7     0x1e  3      OPC=movslq_r64_r32           
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
