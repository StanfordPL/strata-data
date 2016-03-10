  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm7, %xmm14                    #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vpmovzxwd %xmm14, %xmm2                       #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm     
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  4     0xf   5      OPC=callq_label           
  movzwq %r13w, %rbx                            #  5     0x14  4      OPC=movzwq_r64_r16        
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
