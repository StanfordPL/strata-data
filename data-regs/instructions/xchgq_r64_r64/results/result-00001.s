  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  vmovq %rcx, %xmm3                  #  1     0     5      OPC=vmovq_xmm_r64  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rcx  #  3     0xa   5      OPC=callq_label    
  vmovq %xmm3, %rbx                  #  4     0xf   5      OPC=vmovq_r64_xmm  
  retq                               #  5     0x14  1      OPC=retq           
                                                                              
.size target, .-target
