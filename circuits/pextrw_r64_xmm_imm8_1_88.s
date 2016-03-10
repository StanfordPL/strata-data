  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  pmovzxbd %xmm1, %xmm1                         #  1     0     5      OPC=pmovzxbd_xmm_xmm  
  movq $0x0, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xf   5      OPC=callq_label       
  callq .move_008_016_r10b_r11b_bx              #  4     0x14  5      OPC=callq_label       
  retq                                          #  5     0x19  1      OPC=retq              
                                                                                            
.size target, .-target
