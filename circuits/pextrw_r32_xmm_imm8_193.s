  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm9          #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vdivsd %xmm1, %xmm9, %xmm2      #  2     0x5   4      OPC=vdivsd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  3     0x9   5      OPC=callq_label         
  movzwq %r9w, %rbx               #  4     0xe   4      OPC=movzwq_r64_r16      
  retq                            #  5     0x12  1      OPC=retq                
                                                                                
.size target, .-target
