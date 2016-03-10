  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label    
  testb %cl, %r12b                   #  2     0x5   3      OPC=testb_r8_r8    
  setpe %dh                          #  3     0x8   3      OPC=setpe_rh       
  xchgq %rcx, %rdx                   #  4     0xb   3      OPC=xchgq_r64_r64  
  shrq %cl, %rdx                     #  5     0xe   3      OPC=shrq_r64_cl    
  movq %rdx, %rbx                    #  6     0x11  3      OPC=movq_r64_r64   
  retq                               #  7     0x14  1      OPC=retq           
                                                                              
.size target, .-target
