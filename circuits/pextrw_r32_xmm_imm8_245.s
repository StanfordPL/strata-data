  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm4      #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vpmovzxwq %xmm4, %xmm3            #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm     
  callq .move_128_064_xmm3_r10_r11  #  3     0x9   5      OPC=callq_label           
  movzwq %r11w, %rbx                #  4     0xe   4      OPC=movzwq_r64_r16        
  retq                              #  5     0x12  1      OPC=retq                  
                                                                                    
.size target, .-target
