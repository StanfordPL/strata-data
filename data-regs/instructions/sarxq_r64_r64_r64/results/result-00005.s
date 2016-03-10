  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  vmovq %rcx, %xmm7                #  1     0     5      OPC=vmovq_xmm_r64  
  callq .move_064_032_rdx_r8d_r9d  #  2     0x5   5      OPC=callq_label    
  vmovq %xmm7, %rbx                #  3     0xa   5      OPC=vmovq_r64_xmm  
  callq .move_008_016_r8b_r9b_cx   #  4     0xf   5      OPC=callq_label    
  sarq %cl, %rbx                   #  5     0x14  3      OPC=sarq_r64_cl    
  retq                             #  6     0x17  1      OPC=retq           
                                                                            
.size target, .-target
