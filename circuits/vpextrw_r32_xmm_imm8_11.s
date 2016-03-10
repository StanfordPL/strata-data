  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm2                        #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vmovshdup %xmm2, %xmm3                        #  2     0x5   4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label        
  movzwl %r13w, %ebx                            #  4     0xe   4      OPC=movzwl_r32_r16     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
