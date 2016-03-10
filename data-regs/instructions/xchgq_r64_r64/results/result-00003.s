  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r10d_r11d  #  1     0     5      OPC=callq_label    
  vmovq %rbx, %xmm1                  #  2     0x5   5      OPC=vmovq_xmm_r64  
  vmovq %xmm1, %rcx                  #  3     0xa   5      OPC=vmovq_r64_xmm  
  callq .move_032_064_r10d_r11d_rbx  #  4     0xf   5      OPC=callq_label    
  retq                               #  5     0x14  1      OPC=retq           
                                                                              
.size target, .-target
