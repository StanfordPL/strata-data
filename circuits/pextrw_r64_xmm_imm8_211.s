  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  pmovzxwd %xmm1, %xmm15                          #  2     0x5   6      OPC=pmovzxwd_xmm_xmm        
  vpunpckhdq %xmm15, %xmm9, %xmm3                 #  3     0xb   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d    #  4     0x10  5      OPC=callq_label             
  movzwl %r13w, %ebx                              #  5     0x15  4      OPC=movzwl_r32_r16          
  retq                                            #  6     0x19  1      OPC=retq                    
                                                                                                    
.size target, .-target
