  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm0                        #  1     0     4      OPC=vmovshdup_xmm_xmm  
  vpmovzxwd %xmm0, %xmm2                        #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label        
  movzwq %r11w, %rbx                            #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
