  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm4, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  xorq %rbx, %rbx                               #  3     0xa   3      OPC=xorq_r64_r64       
  xchgb %bh, %bh                                #  4     0xd   2      OPC=xchgb_rh_rh        
  callq .move_128_064_xmm2_r12_r13              #  5     0xf   5      OPC=callq_label        
  xaddw %bx, %r13w                              #  6     0x14  5      OPC=xaddw_r16_r16      
  retq                                          #  7     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
