  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movq $0x7, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64    
  pmovzxbd %xmm6, %xmm2                         #  3     0xf   5      OPC=pmovzxbd_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  4     0x14  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx                #  5     0x19  5      OPC=callq_label       
  retq                                          #  6     0x1e  1      OPC=retq              
                                                                                            
.size target, .-target
