  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm8, %ebx                           #  2     0x5   5      OPC=vmovmskpd_r32_xmm  
  vpmovzxwq %xmm11, %xmm2                         #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  4     0xf   5      OPC=callq_label        
  xchgw %bx, %r9w                                 #  5     0x14  4      OPC=xchgw_r16_r16      
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
