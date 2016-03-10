  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm12           #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  vmovups %xmm12, %xmm2             #  2     0x5   5      OPC=vmovups_xmm_xmm    
  callq .move_128_064_xmm2_r10_r11  #  3     0xa   5      OPC=callq_label        
  movzwq %r11w, %rbx                #  4     0xf   4      OPC=movzwq_r64_r16     
  retq                              #  5     0x13  1      OPC=retq               
                                                                                 
.size target, .-target
