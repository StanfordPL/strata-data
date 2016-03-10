  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .move_064_032_rdx_r8d_r9d  #  1     0     5      OPC=callq_label    
  movq %rcx, %rdx                  #  2     0x5   3      OPC=movq_r64_r64   
  movsbq %r8b, %rcx                #  3     0x8   4      OPC=movsbq_r64_r8  
  salq %cl, %rdx                   #  4     0xc   3      OPC=salq_r64_cl    
  movq %rdx, %rbx                  #  5     0xf   3      OPC=movq_r64_r64   
  retq                             #  6     0x12  1      OPC=retq           
                                                                            
.size target, .-target
