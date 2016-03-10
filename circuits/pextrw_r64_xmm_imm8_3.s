  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm8_xmm9         #  1     0     5      OPC=callq_label           
  vmovlhps %xmm9, %xmm1, %xmm3              #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label           
  callq .move_032_016_edx_r10w_r11w         #  4     0xf   5      OPC=callq_label           
  movzwq %r11w, %rbx                        #  5     0x14  4      OPC=movzwq_r64_r16        
  retq                                      #  6     0x18  1      OPC=retq                  
                                                                                            
.size target, .-target
