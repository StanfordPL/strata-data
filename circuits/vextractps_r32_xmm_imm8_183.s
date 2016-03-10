  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode             
.target:                                        #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label    
  movd %r13d, %xmm3                             #  2     0x5  5      OPC=movd_xmm_r32   
  vmovq %xmm3, %rbx                             #  3     0xa  5      OPC=vmovq_r64_xmm  
  retq                                          #  4     0xf  1      OPC=retq           
                                                                                        
.size target, .-target
