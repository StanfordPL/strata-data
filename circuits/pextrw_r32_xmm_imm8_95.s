  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  cvtps2pd %xmm10, %xmm2                          #  2     0x5   4      OPC=cvtps2pd_xmm_xmm       
  pmovzxwq %xmm11, %xmm15                         #  3     0x9   6      OPC=pmovzxwq_xmm_xmm       
  vunpckhpd %xmm2, %xmm15, %xmm15                 #  4     0xf   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovq %xmm15, %rbx                              #  5     0x13  5      OPC=vmovq_r64_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
