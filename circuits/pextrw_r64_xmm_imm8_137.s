  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm10           #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  pmovzxdq %xmm10, %xmm2            #  2     0x5   6      OPC=pmovzxdq_xmm_xmm   
  callq .move_128_064_xmm2_r10_r11  #  3     0xb   5      OPC=callq_label        
  movzwq %r11w, %rbx                #  4     0x10  4      OPC=movzwq_r64_r16     
  retq                              #  5     0x14  1      OPC=retq               
                                                                                 
.size target, .-target
